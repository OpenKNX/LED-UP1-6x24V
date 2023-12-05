#line 1 "d:\\Data\\Eigene Dokumente\\Projekte\\EIB\\OpenKNX\\SirSydom-Repos\\LED-UP1-6x24V\\software\\DIM-6CVLED.01\\timeslice.h"
#pragma once

// Stuff for CycleControl

#include <Arduino.h>

#define T1_CYCLETIME 1
#define T2_CYCLETIME 5
#define T3_CYCLETIME 25
#define T4_CYCLETIME 500
#define T5_CYCLETIME 10000


// End Stuff for CycleControl


void timeslice_setup();

void timeslice_scheduler();

unsigned long calculateElapsedMillis(unsigned long lastrunMillis, unsigned long currentMillis);

void T1();
void T2();
void T3();
void T4();
void T5();
