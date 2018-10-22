SET OPENOCD=..\..\..\OpenOCD-master-20181020

SET BOOTLOADER=../bootloader/_build/nrf52840_xxaa_s140.hex
SET SOFTDEVICE=../softdevice/s140_nrf52_6.1.0_softdevice.hex
SET PROGRAM=_build/nrf52840_xxaa.hex

%OPENOCD%\bin\openocd -s %OPENOCD%/share/openocd/scripts/ -f ../board/nRF52840_openocd.cfg -c init -c "reset init" -c halt -c "nrf5 mass_erase" -c "program %SOFTDEVICE% verify" -c "program %PROGRAM% verify reset" -c reset -c exit
::%OPENOCD%\bin\openocd -s %OPENOCD%/share/openocd/scripts/ -f ../board/nRF52840_openocd.cfg -c init -c "reset init" -c halt -c "nrf5 mass_erase" -c "program %BOOTLOADER% verify" -c "program %SOFTDEVICE% verify reset" -c reset -c exit
::%OPENOCD%\bin\openocd -s %OPENOCD%/share/openocd/scripts/ -f ../board/nRF52840_openocd.cfg -c init -c "reset init" -c halt -c "nrf5 mass_erase" -c "program %BOOTLOADER% verify" -c "program %SOFTDEVICE% verify" -c "program %PROGRAM% verify reset" -c reset -c exit