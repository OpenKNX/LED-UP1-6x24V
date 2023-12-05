#line 1 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\OpenKNX\\SirSydom-Repos\\LED-UP1-6x24V\\software\\DIM-6CVLED.01\\KRSXL_common.cpp"
#include "KRSXL_common.h"


KRSXL_common::KRSXL_common()
{
  // Tempsens
  OneWire *oneWire = new OneWire(TEMPSENS);
  m_ds18b20 = DallasTemperature((oneWire));
}

void KRSXL_common::Setup()
{
  #if (DBGLVL & DBG_KRSXL_COMMON) != 0
  Debug.println("KRSXL_common::Setup");
  #endif

  // LEDs
  #ifdef ERROR_LED_PIN
  pinMode(ERROR_LED_PIN, OUTPUT);
  #endif

  #ifdef PROG_LED_PIN
  pinMode(PROG_LED_PIN, OUTPUT);
  #endif
  

  // Tempsens
  m_ds18b20.begin();
  m_ds18b20.getAddress(m_ds18b20_adr, 0);
  m_ds18b20.setResolution(m_ds18b20_adr, DS18B20_RESOLUTION);
  m_ds18b20.setWaitForConversion(false);
  m_ds18b20.requestTemperatures();
  m_ds18b20_delay = 750 / (1 << (12 - DS18B20_RESOLUTION)); 
  m_ds18b20_lastrequest = millis();
}

void KRSXL_common::KnxEvent(byte index)
{
  
}

int KRSXL_common::Cyclic_5()
{
  for(int i = 0;i<COMMON_NO_OF_BUTTONS;i++)
  {
    m_buttons[i].Cyclic();
  }
}

int KRSXL_common::Cyclic_25()
{
  #ifdef PROG_LED_PIN
  if(BETA)
  {
    m_prog_led_toggle_cnt++;
    if(m_prog_led_toggle_cnt >= (m_prog_led_state?10:50))
    {
      digitalWrite(PROG_LED_PIN, m_prog_led_toggle);
      m_prog_led_toggle = !m_prog_led_toggle;
      m_prog_led_toggle_cnt = 0;
    }
  }
  else
  {
    digitalWrite(PROG_LED_PIN, m_prog_led_state);
  }
  #endif
}

int KRSXL_common::Cyclic_500()
{
  #if (DBGLVL & DBG_KRSXL_COMMON) != 0
  //Debug.println(F("KRSXL_common::Cyclic_500"));
  #endif

  int returnval = 0;

  // LEDs
  if(BETA)
  {
    m_toggle_error_led = !m_toggle_error_led;
    #ifdef ERROR_LED_PIN
    digitalWrite(ERROR_LED_PIN, m_toggle_error_led);
    #endif
  }

  // Tempsens
  if (millis() - m_ds18b20_lastrequest >= m_ds18b20_delay) // waited long enough??
  {

    float temperature = m_ds18b20.getTempCByIndex(0);
    m_ds18b20.requestTemperatures();
    
    m_ds18b20_delay = 750 / (1 << (12 - DS18B20_RESOLUTION)); 
    m_ds18b20_lastrequest = millis(); 

    Knx.write(COMOBJ_gen_casetemp, temperature);

    #if (DBGLVL & DBG_KRSXL_COMMON) != 0
    Debug.println(F("Temp %f"),temperature);
    #endif

    if(temperature >= m_max_casetemp)
    {
      m_tempwarn_cnt++;
      if(m_tempwarn_cnt >= m_tempwarn_cnt_threshold)
      {
        Knx.write(COMOBJ_gen_temp_alarm, 1);

        returnval |= 0x01;
      }
    }
    else
    {
      m_tempwarn_cnt = 0;
    }
  }

  return returnval;
}

void  KRSXL_common::RegisterButton(int pin, ButtonPress_func_t callback, int longpress)
{
  #if (DBGLVL & DBG_KRSXL_COMMON) != 0
  Debug.println(F("RegisterButton"));
  #endif

  // create and store button obj
  if(m_next_button < COMMON_NO_OF_BUTTONS)
  {
    m_buttons[m_next_button] = Button(pin, callback, longpress);
    m_next_button++;
  }
  else
  {
    #if (DBGLVL & DBG_KRSXL_COMMON) != 0
    Debug.println(F("RegisterButton: Button cannot be registerd, Maximum exceeded"));
    #endif
  }
}

void  KRSXL_common::Reboot()
{
  WDT->CTRL.reg = 0; // disable watchdog
  while (WDT->STATUS.bit.SYNCBUSY == 1); //Just wait till WDT is free
  WDT->CONFIG.reg = 0; // see Table 17-5 Timeout Period (valid values 0-11)
  WDT->CTRL.reg = WDT_CTRL_ENABLE; //enable watchdog
  while (WDT->STATUS.bit.SYNCBUSY == 1); //Just wait till WDT is free
  while (1);
}


Button::Button()
{
  m_pin = 0;
}

Button::Button(int pin, ButtonPress_func_t callback, int longpress)
{
  #if (DBGLVL & DBG_KRSXL_COMMON) != 0
  Debug.println(F("Button::Button"));
  #endif

  m_pin = pin;
  m_callback = callback;
  m_longpress = longpress;
  pinMode(m_pin, INPUT_PULLUP);
}

bool Button::IsFree()
{
  return (m_pin != 0);
}

void Button::Cyclic()
{
  bool pinstate = !digitalRead(m_pin);

  if(m_state == pinstate)
  {
    m_debounce_cnt = 0;
    m_pressed_cnt++;
  }
  else
  {
    #if (DBGLVL & DBG_KRSXL_COMMON) != 0
    Debug.println(F("Button::Cyclic %d %d %d"),m_state, pinstate, m_debounce_cnt);
    #endif

    m_debounce_cnt++;
    if(m_debounce_cnt > 4)
    {
      m_state = pinstate;
      m_debounce_cnt = 0;
      m_callback(m_pin, m_state, m_pressed_cnt > m_longpress);
      m_pressed_cnt = 0;
    }
  }
}
