#pragma once


#include "SPI.h"
#include "Adafruit_GFX.h"
#include "Adafruit_ILI9341.h"

#include <OneWire.h> 
#include <DallasTemperature.h>

#include "config.h"
#include <KonnektingDevice.h>


/*
// functions
- read case temp and send it, also alarm and shutdown
- errorcode handling
- display
- buttons
- time
- busspannungsausfall

*/

typedef void (*ButtonPress_func_t)(int, bool, bool); 

class Button
{
  private: int m_pin = 0;
  private: int m_longpress = 0;
  private: uint8_t m_debounce_cnt = 0;
  private: uint16_t m_pressed_cnt = 0;
  private: bool m_state = false;
  private: ButtonPress_func_t m_callback = NULL;

  //constructors
  public: Button();
  public: Button(int pin, ButtonPress_func_t callback, int longpress);
  

  public: bool IsFree();

  public: void Cyclic();
};


class KRSXL_common
{
  
	private: Adafruit_ILI9341 *m_tft;
  
  private: DallasTemperature m_ds18b20;
  private: DeviceAddress m_ds18b20_adr;
  private: uint16_t m_ds18b20_delay;
  private: uint32_t m_ds18b20_lastrequest;
  private: uint8_t m_tft_brightness = 80;
  private: uint8_t m_max_casetemp = 60;
  private: uint8_t m_tempwarn_cnt = 0;
  private: uint8_t m_tempwarn_cnt_threshold = 3;

  private: bool m_toggle_error_led = false;
  private: bool m_prog_led_state = false;
  private: bool m_prog_led_toggle = false;
  private: uint8_t m_prog_led_toggle_cnt = 0;

  private: Button m_buttons[COMMON_NO_OF_BUTTONS];
  private: uint8_t m_next_button = 0;

  //constructors
  public: KRSXL_common();

  public: int Cyclic_5();

  public: int Cyclic_25();

	public: int Cyclic_500();

  public: void Setup();

  public: void KnxEvent(byte index);

  public: void displayOff();

  public: void displayOn();

  public: void SetProgState(bool state)
  {
    m_prog_led_state = state;
  }

  public: void RegisterButton(int pin, ButtonPress_func_t callback, int longpress);

  public: void Reboot();
  
};

