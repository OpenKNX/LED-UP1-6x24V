#line 1 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\OpenKNX\\SirSydom-Repos\\LED-UP1-6x24V\\software\\DIM-6CVLED.01\\HardwareChannel.h"
#pragma once
#include <KonnektingDevice.h>
#include "config.h"


class HardwareChannel
{
  //functions
  public: virtual void SetValue(uint8_t value) = 0;

  public: virtual void SetValue(uint8_t value, bool force) = 0;
  
  public: virtual uint8_t GetCurrentValue() = 0;

  public: virtual bool WorkerRequested() = 0;

  public: virtual void ExecuteWorker() = 0;

  public: virtual void Shutdown() = 0;
};