#ifndef TSDZ2_BLE_CONN_PARAMS_H__
#define TSDZ2_BLE_CONN_PARAMS_H__

#include "ble_conn_params.h"

void on_conn_params_evt(ble_conn_params_evt_t * p_evt);
void conn_params_error_handler(uint32_t nrf_error);
void conn_params_init(void);

#endif //TSDZ2_BLE_CONN_PARAMS_H__