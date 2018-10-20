SET OPENOCD=C:\Projects\nRF52-experiments\OpenOCD-master-20181020\

%OPENOCD%/bin/openocd -s %OPENOCD%/share/openocd/scripts/ -f nRF52840_openocd.cfg -c init