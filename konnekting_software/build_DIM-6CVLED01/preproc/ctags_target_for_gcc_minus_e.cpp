# 1 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\OpenKNX\\SirSydom-Repos\\LED-UP1-6x24V\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino"
/*

DIM-6CVLED.01 6channel PWM LED Dimmer

V0.0.1

*/
# 6 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\OpenKNX\\SirSydom-Repos\\LED-UP1-6x24V\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino"
/*

Changelog:

  V0.0.1

    - copied DIM-24CxLED V0.0.3

    - adapted to 6 channels and KUPS





/*



Backlog

- pwm glitch  at 100%

- einschaltverhalten





*/
# 24 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\OpenKNX\\SirSydom-Repos\\LED-UP1-6x24V\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino"
// Developed/Tested with
//
// Library Versions:
//
// KONNEKTING_Device_Library: 1.0.0-BETA4b_mod
// Adafriut_Dotstar: 1.1.2
// Adafriut_SPIFlash: 1.0.8 / 1.1.0
//
// Other Versions:
// Arduino IDE: 1.8.8
// Boardmanager Arduino SAMD Boards: 1.8.3
// Boardmanager Adafruit SAMD Boards: 1.5.3

/* DotStar RBG LED Color definitions



red:    Waiting for establishing Debug Connection USB-Serial

blue:   FactoryMode - Programm with Konnekting Suite

green:  Normal Mode

cyan:   Normal Mode with Serial Debug

*/
# 47 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\OpenKNX\\SirSydom-Repos\\LED-UP1-6x24V\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino"
// external libs
# 49 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\OpenKNX\\SirSydom-Repos\\LED-UP1-6x24V\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino" 2
# 50 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\OpenKNX\\SirSydom-Repos\\LED-UP1-6x24V\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino" 2
# 51 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\OpenKNX\\SirSydom-Repos\\LED-UP1-6x24V\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino" 2
# 52 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\OpenKNX\\SirSydom-Repos\\LED-UP1-6x24V\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino" 2
# 53 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\OpenKNX\\SirSydom-Repos\\LED-UP1-6x24V\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino" 2
# 54 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\OpenKNX\\SirSydom-Repos\\LED-UP1-6x24V\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino" 2

// own classes
# 57 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\OpenKNX\\SirSydom-Repos\\LED-UP1-6x24V\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino" 2
# 58 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\OpenKNX\\SirSydom-Repos\\LED-UP1-6x24V\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino" 2
# 59 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\OpenKNX\\SirSydom-Repos\\LED-UP1-6x24V\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino" 2
# 60 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\OpenKNX\\SirSydom-Repos\\LED-UP1-6x24V\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino" 2
# 61 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\OpenKNX\\SirSydom-Repos\\LED-UP1-6x24V\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino" 2
# 62 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\OpenKNX\\SirSydom-Repos\\LED-UP1-6x24V\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino" 2


// include device related configuration code, created by "KONNEKTING CodeGenerator"
# 66 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\OpenKNX\\SirSydom-Repos\\LED-UP1-6x24V\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino" 2

//configuration
# 69 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\OpenKNX\\SirSydom-Repos\\LED-UP1-6x24V\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino" 2




// ################################################
// ### Global variables, sketch related
// ################################################

// this array defines which PWM channel is used for the KNX-channels (A..X)
// a number < 100 will be matched to the corresponding arduino-pinMode
// a number > 100 will be matched to a PCA9685 channel e.g. 100 is channel 0 on PCA9685 controller 0. 123 is channel 7 in controller 1.
const uint8_t outpins[6] = {105, 104, 103, 102, 101, 100};


Dimmer dimmer(outpins);
KRSXL_common common;
KNXCLock knxclock(59);

//Dotstar LED
Adafruit_DotStar px(1, 41, 40, (2 | (1 << 2) | (0 << 4)) /*|< Transmit as B,G,R*/);

//ErrorCode
uint32_t g_ErrorCode = 0;


// ################################################
// ### KONNEKTING Configuration
// ################################################

//FlashStorage
byte readMemory(int index)
{




  return FileEEPROM.read(index);
}
void writeMemory(int index, byte val)
{




  FileEEPROM.write(index, val);
}
void updateMemory(int index, byte val)
{




  if (FileEEPROM.read(index) != val)
  {
    FileEEPROM.write(index, val);
  }
}
void commitMemory()
{




  FileEEPROM.commit();
}


// ################################################
// ### set ProgLED status
// ################################################
//this function is used to indicate programming mode.
//you can use LED, LCD display or what ever you want...
void progLed(bool state)
{
  common.SetProgState(state);
}



// ################################################
// ### KNX EVENT CALLBACK
// ################################################
void knxEvents(byte index)
{
  dimmer.KnxEvent(index);
  knxclock.KnxEvent(index);
}



void ProgButtonPressed(int pin, bool Edge, bool LongPress)
{

  Debug.println((reinterpret_cast<const __FlashStringHelper *>(("ProgButtonPressed %d %d %d"))), pin, Edge, LongPress);


  if(Edge)
  {
    //Button was pressed
    Konnekting.toggleProgState();
  }
  else
  {
    //Button was released
    if(LongPress)
    {
      common.Reboot();
    }
  }
}




// ################################################
// ### SETUP
// ################################################

void setup()
{
  px.begin(); // Initialize pins for output
  px.show(); // Turn all LEDs off ASAP
  px.setPixelColor(0, 50, 0, 0); // red
  px.show();

  // debug related stuff
# 211 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\OpenKNX\\SirSydom-Repos\\LED-UP1-6x24V\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino"
  Debug.println((reinterpret_cast<const __FlashStringHelper *>(("Debug output started"))));

  Konnekting.setMemoryReadFunc(&readMemory);
  Konnekting.setMemoryWriteFunc(&writeMemory);
  Konnekting.setMemoryUpdateFunc(&updateMemory);
  Konnekting.setMemoryCommitFunc(&commitMemory);

  HardwareChannel_pca9685::Setup(outpins);

  common.RegisterButton(12, &ProgButtonPressed, 500);
  common.Setup();

  // Initialize KNX enabled Arduino Board
  Konnekting.init(Serial1,
                    &progLed,
                    7337,
                    120,
                    0);



  if (!Konnekting.isFactorySetting())
  {
    dimmer.Setup(outpins);
    knxclock.Setup();




    px.setPixelColor(0, 0, 50, 0); // green

    px.show();

  }
  else
  {

    Debug.println((reinterpret_cast<const __FlashStringHelper *>(("Device is in factory mode. Starting programming mode..."))));

    px.setPixelColor(0, 0, 0, 50); // blue
    px.show();
    Konnekting.setProgState(true);
  }
  timeslice_setup();

  dimmer.FlashAllChannels(true);


  Debug.println((reinterpret_cast<const __FlashStringHelper *>(("Setup is ready. go to loop..."))));

}




// ################################################
// ### LOOP
// ################################################
void loop()
{
    Knx.task();
    timeslice_scheduler();

    // only do application stuff if not in programming mode
    if (Konnekting.isReadyForApplication())
    {
      dimmer.CyclicMax();
    }
}

void T1() // 1ms
{
  //Debug.println(F("T1"));
}

void T2() // 5ms
{
  //Debug.println(F("T2"));
  common.Cyclic_5();
}

void T3() // 25ms
{
  //Debug.println(F("T3"));
  if (Konnekting.isReadyForApplication())
  {
    dimmer.Cyclic();
  }
  common.Cyclic_25();
}

void T4() // 500ms
{
  //Debug.println(F("T4"));
  int check = HardwareChannel_pca9685::CheckConnection(outpins);
  // 0 = all good
  // 1 = PCA9685 gone away
  // 2 = PCA9685 i2cerror after Re-Setup
  // 3 = Re-Setup successfull, do refresh
  if(check)
  {
    uint32_t old_error = g_ErrorCode;
    if(check == 3)
    {
      dimmer.Refresh();
      SetErrorCode(0x00000000, 0x00000003);
    }
    else
    {
      SetErrorCode(0x00000002, 0x00000003);
    }

    if(old_error != g_ErrorCode)
      Knx.write(60, g_ErrorCode);
  }

  int common_cyclic500_returnvalue = common.Cyclic_500();
  if(common_cyclic500_returnvalue & 0x01)
  {
    dimmer.Shutdown();
  }
}

void T5() // 10000ms
{

  Debug.println((reinterpret_cast<const __FlashStringHelper *>(("T5"))));


  if(g_ErrorCode || 1) // send only when != 0 OR when BETA
  {
    Knx.write(60, g_ErrorCode);
  }
  dimmer.FlashAllChannels(false);
}



// ################################################
// ### HELPER FUNCTIONS
// ################################################


void SetErrorCode(uint32_t ErrorBits, uint32_t Mask)
{
  g_ErrorCode &= ~Mask; // Bits löschen
  g_ErrorCode |= ErrorBits;
}
