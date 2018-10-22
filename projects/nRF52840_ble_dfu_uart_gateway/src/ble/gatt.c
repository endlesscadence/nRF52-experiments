#include "sdk_errors.h"
#include "app_error.h"

#include "nrf_ble_gatt.h"

// includes from this project
#include "common.h"
#include "gatt.h"

/**@brief Function for initializing the GATT module.
 */
void gatt_init(nrf_ble_gatt_t *gatt)
{
    ret_code_t err_code = nrf_ble_gatt_init(gatt, NULL);
    APP_ERROR_CHECK(err_code);
}