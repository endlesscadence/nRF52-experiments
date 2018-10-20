SET OPENOCD=..\..\..\OpenOCD-master-20181020

SET SOFTDEVICE=../../../nRF5_SDK_15.2.0_9412b96/components/softdevice/s140/hex/s140_nrf52_6.1.0_softdevice.hex
SET PROGRAM=_build/nrf52840_xxaa.hex

%OPENOCD%\bin\openocd -s %OPENOCD%/share/openocd/scripts/ -f nRF52840_openocd.cfg -c init -c "reset init" -c halt -c "nrf5 mass_erase" -c "program %SOFTDEVICE% verify" -c "program %PROGRAM% verify reset" -c reset -c exit
