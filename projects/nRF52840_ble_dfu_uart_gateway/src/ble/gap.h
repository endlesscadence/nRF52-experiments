#ifndef TSDZ2_BLE_GAP_H__
#define TSDZ2_BLE_GAP_H__

#include "ble_lbs.h"
#include "ble_advdata.h"

#define DEVICE_NAME "Holyiot_BLE_DFU_UART"  // Name of device. Will be included in the advertising data

void gap_params_init(void);

#endif //TSDZ2_BLE_GAP_H__