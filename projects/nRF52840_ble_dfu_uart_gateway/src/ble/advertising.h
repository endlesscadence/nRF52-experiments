#ifndef TSDZ2_BLE_ADVERTISING_H__
#define TSDZ2_BLE_ADVERTISING_H__

#include "ble_lbs.h"
#include "ble_advdata.h"

#define APP_ADV_INTERVAL                64                                      /**< The advertising interval (in units of 0.625 ms; this value corresponds to 40 ms). */
#define APP_ADV_DURATION                BLE_GAP_ADV_TIMEOUT_GENERAL_UNLIMITED   /**< The advertising time-out (in units of seconds). When set to 0, we will never time out. */

void advertising_init(ble_lbs_t lbs);
void advertising_start(void);

#endif //TSDZ2_BLE_ADVERTISING_H__