ECHO OFF
CLS
:MENU
ECHO.
ECHO ...............................................
ECHO PRESS 1, 2 ,3 OR 4 to select your task, or 5 to EXIT.
ECHO ...............................................
ECHO.
ECHO 1 - Disable DNS
ECHO 2 - Electro DNS ( Gaming )
ECHO 3 - Shecan DNS ( Web )
ECHO 4 - Radar DNS ( Gaming )
ECHO 5 - Exit
ECHO.
SET /P M=Type 1, 2, 3, 4 or 5 then press ENTER:
IF %M%==1 GOTO DIS
IF %M%==2 GOTO ELE
IF %M%==3 GOTO SHE
IF %M%==4 GOTO RAD
IF %M%==5 GOTO EOF
:DIS
color 2
netsh interface ipv4 set dns name="Ethernet 1" source=dhcp
echo DNS Server disabled !
pause
GOTO MENU
:ELE
netsh interface ipv4 set dns name="Ethernet 1" static 78.157.42.100
netsh interface ipv4 add dns name="Ethernet 1" addr=78.157.42.101 index=2
echo DNS servers are set to 78.157.42.100 and 78.157.42.101 !
pause
GOTO MENU
:SHE
netsh interface ipv4 set dns name="Ethernet 1" static 178.22.122.100
netsh interface ipv4 add dns name="Ethernet 1" addr=185.51.200.2 index=2
echo DNS servers are set to 178.22.122.100 and 185.51.200.2 !
pause
GOTO MENU
:RAD
netsh interface ipv4 set dns name="Ethernet 1" static 10.202.10.10
netsh interface ipv4 add dns name="Ethernet 1" addr=10.202.10.11 index=2
echo DNS servers are set to 10.202.10.10 and 10.202.10.11 !
pause
GOTO MENU