// ################################################
// ### DEBUG CONFIGURATION
// ################################################
#define KDEBUG // comment this line to disable DEBUG mode
#ifdef KDEBUG
#include <DebugUtil.h>
#endif

#define DBG_MAIN 1
#define DBG_TIMESLICE 2
#define DBG_KRSXL_COMMON 4
#define DBG_KNXCLOCK 8
#define DBG_DIMMER 16
#define DBG_DIMMCHANNEL 32
#define DBG_HWCHANNEL 64
#define DBG_FLASHSTORAGE 128

#define DBGLVL  (DBG_MAIN | DBG_HWCHANNEL | DBG_DIMMCHANNEL | DBG_DIMMER)


#define BETA 1


#define ERRORCODE_PCASTATUS_MASK   0x00000003
#define ERRORCODE_PCASTATUS_GOOD    0x00000000
#define ERRORCODE_PCASTATUS_GONE    0x00000001
#define ERRORCODE_PCASTATUS_ERR     0x00000002


// ################################################
// ### KONNEKTING Configuration
// ################################################

// SAMD21 / ItsyBitsy M0
#define KNX_SERIAL Serial1
#define DEBUGSERIAL Serial //(USB)

//pin definitions for the ItsyBitsy M0 Dotstar LED
#define DATAPIN    41
#define CLOCKPIN   40
#define NUMPIXELS   1


// ################################################
// ### IO Configuration
// ################################################

#define COMMON_NO_OF_BUTTONS 1


// SAMD21
#define PROG_LED_PIN 13

#define PROG_BTN_PIN 12

#define TEMPSENS A3
#define DS18B20_RESOLUTION 9

#define OUTPIN_A 105
#define OUTPIN_B 104
#define OUTPIN_C 103
#define OUTPIN_D 102
#define OUTPIN_E 101
#define OUTPIN_F 100




// dont change here, this will result in broken code
#define KO_PER_CHANNEL 7
#define KO_PER_RGB_CHANNEL 7
#define PARAMS_PER_CHANNEL 6
#define PARAMS_PER_RGB_CHANNEL 6

#define COMOBJ_CH_X_SW 0
#define COMOBJ_CH_X_DIM 1
#define COMOBJ_CH_X_DIMREL 2
#define COMOBJ_CH_X_ANIMATION 2
#define COMOBJ_CH_X_LOCK 3
#define COMOBJ_CH_X_SCENE 4
#define COMOBJ_CH_X_STAT_SW 5
#define COMOBJ_CH_X_STAT_DIM 6


// ToDo More Channels
// Change here if you change the number of the channels
#define NO_OF_CHANNELS 6
#define NO_OF_RGB_CHANNELS (NO_OF_CHANNELS/3)
#define NO_OF_ALL_CHANNELS (NO_OF_CHANNELS+NO_OF_RGB_CHANNELS)

#define NO_OF_PCA9685 1


// Konnekting XML

#define MANUFACTURER_ID 7337
#define DEVICE_ID 120
#define REVISION 0

#define COMOBJ_ch_A_sw 0
#define COMOBJ_ch_A_dim 1
#define COMOBJ_ch_A_dimrel 2
#define COMOBJ_ch_A_lock 3
#define COMOBJ_ch_A_scene 4
#define COMOBJ_ch_A_stat_sw 5
#define COMOBJ_ch_A_stat_dim 6
#define COMOBJ_ch_B_sw 7
#define COMOBJ_ch_B_dim 8
#define COMOBJ_ch_B_dimrel 9
#define COMOBJ_ch_B_lock 10
#define COMOBJ_ch_B_scene 11
#define COMOBJ_ch_B_stat_sw 12
#define COMOBJ_ch_B_stat_dim 13
#define COMOBJ_ch_C_sw 14
#define COMOBJ_ch_C_dim 15
#define COMOBJ_ch_C_dimrel 16
#define COMOBJ_ch_C_lock 17
#define COMOBJ_ch_C_scene 18
#define COMOBJ_ch_C_stat_sw 19
#define COMOBJ_ch_C_stat_dim 20
#define COMOBJ_ch_D_sw 21
#define COMOBJ_ch_D_dim 22
#define COMOBJ_ch_D_dimrel 23
#define COMOBJ_ch_D_lock 24
#define COMOBJ_ch_D_scene 25
#define COMOBJ_ch_D_stat_sw 26
#define COMOBJ_ch_D_stat_dim 27
#define COMOBJ_ch_E_sw 28
#define COMOBJ_ch_E_dim 29
#define COMOBJ_ch_E_dimrel 30
#define COMOBJ_ch_E_lock 31
#define COMOBJ_ch_E_scene 32
#define COMOBJ_ch_E_stat_sw 33
#define COMOBJ_ch_E_stat_dim 34
#define COMOBJ_ch_F_sw 35
#define COMOBJ_ch_F_dim 36
#define COMOBJ_ch_F_dimrel 37
#define COMOBJ_ch_F_lock 38
#define COMOBJ_ch_F_scene 39
#define COMOBJ_ch_F_stat_sw 40
#define COMOBJ_ch_F_stat_dim 41
#define COMOBJ_ch_ABC_sw 42
#define COMOBJ_ch_ABC_dim 43
#define COMOBJ_ch_ABC_animation 44
#define COMOBJ_ch_ABC_lock 45
#define COMOBJ_ch_ABC_scene 46
#define COMOBJ_ch_ABC_stat_sw 47
#define COMOBJ_ch_ABC_stat_dim 48
#define COMOBJ_ch_DEF_sw 49
#define COMOBJ_ch_DEF_dim 50
#define COMOBJ_ch_DEF_animation 51
#define COMOBJ_ch_DEF_lock 52
#define COMOBJ_ch_DEF_scene 53
#define COMOBJ_ch_DEF_stat_sw 54
#define COMOBJ_ch_DEF_stat_dim 55
#define COMOBJ_gen_casetemp 56
#define COMOBJ_gen_temp_alarm 57
#define COMOBJ_gen_daynight 58
#define COMOBJ_gen_datetime 59
#define COMOBJ_error_code 60
#define PARAM_ch_ABC_mode 0
#define PARAM_ch_DEF_mode 1
#define PARAM_ch_A_sw_on_dim 2
#define PARAM_ch_A_fade_time 3
#define PARAM_ch_A_lock_mode 4
#define PARAM_ch_A_lock_time 5
#define PARAM_ch_A_autooff_time 6
#define PARAM_ch_A_switchvalues 7
#define PARAM_ch_B_sw_on_dim 8
#define PARAM_ch_B_fade_time 9
#define PARAM_ch_B_lock_mode 10
#define PARAM_ch_B_lock_time 11
#define PARAM_ch_B_autooff_time 12
#define PARAM_ch_B_switchvalues 13
#define PARAM_ch_C_sw_on_dim 14
#define PARAM_ch_C_fade_time 15
#define PARAM_ch_C_lock_mode 16
#define PARAM_ch_C_lock_time 17
#define PARAM_ch_C_autooff_time 18
#define PARAM_ch_C_switchvalues 19
#define PARAM_ch_D_sw_on_dim 20
#define PARAM_ch_D_fade_time 21
#define PARAM_ch_D_lock_mode 22
#define PARAM_ch_D_lock_time 23
#define PARAM_ch_D_autooff_time 24
#define PARAM_ch_D_switchvalues 25
#define PARAM_ch_E_sw_on_dim 26
#define PARAM_ch_E_fade_time 27
#define PARAM_ch_E_lock_mode 28
#define PARAM_ch_E_lock_time 29
#define PARAM_ch_E_autooff_time 30
#define PARAM_ch_E_switchvalues 31
#define PARAM_ch_F_sw_on_dim 32
#define PARAM_ch_F_fade_time 33
#define PARAM_ch_F_lock_mode 34
#define PARAM_ch_F_lock_time 35
#define PARAM_ch_F_autooff_time 36
#define PARAM_ch_F_switchvalues 37
#define PARAM_ch_ABC_sw_on_dim 38
#define PARAM_ch_ABC_fade_time 39
#define PARAM_ch_ABC_lock_mode 40
#define PARAM_ch_ABC_lock_time 41
#define PARAM_ch_ABC_autooff_time 42
#define PARAM_ch_ABC_switchvalues 43
#define PARAM_ch_DEF_sw_on_dim 44
#define PARAM_ch_DEF_fade_time 45
#define PARAM_ch_DEF_lock_mode 46
#define PARAM_ch_DEF_lock_time 47
#define PARAM_ch_DEF_autooff_time 48
#define PARAM_ch_DEF_switchvalues 49