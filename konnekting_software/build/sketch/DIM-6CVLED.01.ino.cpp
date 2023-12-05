#include <Arduino.h>
#line 1 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\Konnekting\\repos\\01 KNX Makerstuff repos\\kups-dim-6cvled\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino"
#line 1 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\Konnekting\\repos\\01 KNX Makerstuff repos\\kups-dim-6cvled\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino"
/*
DIM-6CVLED.01 6channel PWM LED Dimmer
V0.0.1
*/

/*
Changelog:
  V0.0.1
    - copied DIM-24CxLED V0.0.3
    - adapted to 6 channels and KUPS


/*

Backlog
- Prog Button Pin


*/



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



// external libs
#include <KonnektingDevice.h>
#include <Adafruit_DotStar.h>
#include <OneWire.h> 
#include <DallasTemperature.h>
#include <Wire.h>
#include "PCA9685.h"

// own classes
#include "FileAsEEPROM.h"
#include "timeslice.h"
#include "DimmChannel.h"
#include "Dimmer.h"
#include "KRSXL_common.h"
#include "KNXClock.h"


// include device related configuration code, created by "KONNEKTING CodeGenerator"
#include "kdevice.h"

//configuration
#include "config.h"




// ################################################
// ### Global variables, sketch related
// ################################################

// this array defines which PWM channel is used for the KNX-channels (A..X)
// a number < 100 will be matched to the corresponding arduino-pinMode
// a number > 100 will be matched to a PCA9685 channel e.g. 100 is channel 0 on PCA9685 controller 0. 123 is channel 7 in controller 1.
const uint8_t outpins[NO_OF_CHANNELS] = {OUTPIN_A, OUTPIN_B, OUTPIN_C, OUTPIN_D, OUTPIN_E, OUTPIN_F};


Dimmer dimmer(outpins);
KRSXL_common common;
KNXCLock knxclock(COMOBJ_gen_datetime);

//Dotstar LED
Adafruit_DotStar px(NUMPIXELS, DATAPIN, CLOCKPIN, DOTSTAR_BGR);

//ErrorCode
uint32_t g_ErrorCode = 0;


// ################################################
// ### KONNEKTING Configuration
// ################################################

//FlashStorage
#line 98 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\Konnekting\\repos\\01 KNX Makerstuff repos\\kups-dim-6cvled\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino"
byte readMemory(int index);
#line 106 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\Konnekting\\repos\\01 KNX Makerstuff repos\\kups-dim-6cvled\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino"
void writeMemory(int index, byte val);
#line 114 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\Konnekting\\repos\\01 KNX Makerstuff repos\\kups-dim-6cvled\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino"
void updateMemory(int index, byte val);
#line 125 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\Konnekting\\repos\\01 KNX Makerstuff repos\\kups-dim-6cvled\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino"
void commitMemory();
#line 140 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\Konnekting\\repos\\01 KNX Makerstuff repos\\kups-dim-6cvled\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino"
void progLed(bool state);
#line 150 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\Konnekting\\repos\\01 KNX Makerstuff repos\\kups-dim-6cvled\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino"
void knxEvents(byte index);
#line 158 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\Konnekting\\repos\\01 KNX Makerstuff repos\\kups-dim-6cvled\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino"
void ProgButtonPressed(int pin, bool Edge, bool LongPress);
#line 186 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\Konnekting\\repos\\01 KNX Makerstuff repos\\kups-dim-6cvled\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino"
void setup();
#line 268 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\Konnekting\\repos\\01 KNX Makerstuff repos\\kups-dim-6cvled\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino"
void loop();
#line 280 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\Konnekting\\repos\\01 KNX Makerstuff repos\\kups-dim-6cvled\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino"
void T1();
#line 284 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\Konnekting\\repos\\01 KNX Makerstuff repos\\kups-dim-6cvled\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino"
void T2();
#line 289 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\Konnekting\\repos\\01 KNX Makerstuff repos\\kups-dim-6cvled\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino"
void T3();
#line 295 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\Konnekting\\repos\\01 KNX Makerstuff repos\\kups-dim-6cvled\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino"
void T4();
#line 329 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\Konnekting\\repos\\01 KNX Makerstuff repos\\kups-dim-6cvled\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino"
void T5();
#line 348 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\Konnekting\\repos\\01 KNX Makerstuff repos\\kups-dim-6cvled\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino"
void SetErrorCode(uint32_t ErrorBits, uint32_t Mask);
#line 98 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\Konnekting\\repos\\01 KNX Makerstuff repos\\kups-dim-6cvled\\software\\DIM-6CVLED.01\\DIM-6CVLED.01.ino"
byte readMemory(int index)
{
  #if (DBGLVL & DBG_FLASHSTORAGE) != 0
  Debug.println(F("FLASH read on index %d"),index);
  #endif

  return FileEEPROM.read(index);
}
void writeMemory(int index, byte val)
{
  #if (DBGLVL & DBG_FLASHSTORAGE) != 0
  Debug.println(F("FLASH write value %d on index %d"),val, index);
  #endif

  FileEEPROM.write(index, val);
}
void updateMemory(int index, byte val)
{
  #if (DBGLVL & DBG_FLASHSTORAGE) != 0
  Debug.println(F("FLASH update"));
  #endif

  if (FileEEPROM.read(index) != val)
  {
    FileEEPROM.write(index, val);
  }
}
void commitMemory()
{
  #if (DBGLVL & DBG_FLASHSTORAGE) != 0
  Debug.println(F("FLASH commit"));
  #endif

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
  #if (DBGLVL & DBG_MAIN) != 0
  Debug.println(F("ProgButtonPressed %d %d %d"), pin, Edge, LongPress);
  #endif

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
  px.show();  // Turn all LEDs off ASAP
  px.setPixelColor(0, 50, 0, 0); // red
  px.show();

  // debug related stuff
#ifdef KDEBUG

    // Start debug serial
    DEBUGSERIAL.begin(115200);


#ifdef __SAMD21G18A__
    // wait for serial port to connect. Needed for SAMD21G18A
    while (!DEBUGSERIAL)
#endif

    // make debug serial port known to debug class
    // Means: KONNEKTING will sue the same serial port for console debugging
    Debug.setPrintStream(&DEBUGSERIAL);
#endif

  Debug.println(F("Debug output started"));

  Konnekting.setMemoryReadFunc(&readMemory);
  Konnekting.setMemoryWriteFunc(&writeMemory);
  Konnekting.setMemoryUpdateFunc(&updateMemory);
  Konnekting.setMemoryCommitFunc(&commitMemory);

  HardwareChannel_pca9685::Setup(outpins);

  common.RegisterButton(PROG_BTN_PIN, &ProgButtonPressed, 500);
  common.Setup();
  
  // Initialize KNX enabled Arduino Board
  Konnekting.init(KNX_SERIAL,
                    &progLed,
                    MANUFACTURER_ID,
                    DEVICE_ID,
                    REVISION);



  if (!Konnekting.isFactorySetting())
  {
    dimmer.Setup(outpins);
    knxclock.Setup();

    #ifdef KDEBUG
    px.setPixelColor(0, 63, 136, 143); // cyan
    #else
    px.setPixelColor(0, 0, 50, 0); // green
    #endif
    px.show();

  }
  else
  {
    #if (DBGLVL & DBG_MAIN) != 0
    Debug.println(F("Device is in factory mode. Starting programming mode..."));
    #endif
    px.setPixelColor(0, 0, 0, 50); // blue
    px.show();
    Konnekting.setProgState(true);
  }
  timeslice_setup();

  dimmer.FlashAllChannels(true);

  #if (DBGLVL & DBG_MAIN) != 0
  Debug.println(F("Setup is ready. go to loop..."));
  #endif
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
}

void T2() // 5ms
{
  common.Cyclic_5();
}

void T3() // 25ms
{
  dimmer.Cyclic();
  common.Cyclic_25();
}

void T4() // 500ms
{
  
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
      SetErrorCode(ERRORCODE_PCASTATUS_GOOD, ERRORCODE_PCASTATUS_MASK);
    }
    else
    {
      SetErrorCode(ERRORCODE_PCASTATUS_ERR, ERRORCODE_PCASTATUS_MASK);
    }

    if(old_error != g_ErrorCode)
      Knx.write(COMOBJ_error_code, g_ErrorCode);
  }
  
  int common_cyclic500_returnvalue = common.Cyclic_500();
  if(common_cyclic500_returnvalue & 0x01)
  {
    dimmer.Shutdown();
  }
  
 
}

void T5() // 10000ms
{
  #if (DBGLVL & DBG_MAIN) != 0
  //Debug.println(F("T5"));
  #endif

  if(g_ErrorCode || BETA) // send only when != 0 OR when BETA
  {
    Knx.write(COMOBJ_error_code, g_ErrorCode);
  }
}



// ################################################
// ### HELPER FUNCTIONS
// ################################################


void SetErrorCode(uint32_t ErrorBits, uint32_t Mask)
{
  g_ErrorCode &= ~Mask; // Bits löschen
  g_ErrorCode |= ErrorBits;
}
