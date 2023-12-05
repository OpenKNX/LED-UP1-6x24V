#line 1 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\OpenKNX\\SirSydom-Repos\\LED-UP1-6x24V\\software\\DIM-6CVLED.01\\DimmChannel.h"
#pragma once

#include <KonnektingDevice.h>
#include "HardwareChannel.h"
#include "HardwareChannel_mega8.h"
#include "HardwareChannel_pca9685.h"
#include "config.h"


class DimmChannel
{
	public: virtual void KnxEvent(byte index) = 0;
	
	public: virtual void Cyclic() = 0;

  public: virtual void Shutdown() = 0;

  public: virtual void Refresh() = 0;
};