SET PRIVATE_KEY_FILE=C:\Projects\nRF52-private\dfu_private.key
SET PACKAGE_NAME=app_dfu_package.zip
SET APP_VERSION=1

..\..\..\nrfutil pkg generate --hw-version 52 --application-version %APP_VERSION% --application _build\nrf52840_xxaa.hex --sd-req 0xAE --key-file %PRIVATE_KEY_FILE% %PACKAGE_NAME%