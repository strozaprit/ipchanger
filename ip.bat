@echo off
echo Choice:
echo [A] Office A
echo [B] Office B
echo [C] Office C
echo [D] Office D
echo [E] Office E
echo [F] Reset to DHCP

echo.
:choice
SET /P C=[A,B,C,D,E,F]?
for %%? in (A) do if /I "%C%"=="%%?" goto A
for %%? in (B) do if /I "%C%"=="%%?" goto B
for %%? in (C) do if /I "%C%"=="%%?" goto C
for %%? in (D) do if /I "%C%"=="%%?" goto D
for %%? in (E) do if /I "%C%"=="%%?" goto E
for %%? in (F) do if /I "%C%"=="%%?" goto F
goto choice
:A
echo "Setting Static IP Information"
netsh interface ip set address "Connessione alla rete locale (LAN)" static 192.168.101.80 255.255.255.0 192.168.101.254 1
netsh interface ip set dns "Connessione alla rete locale (LAN)" static 8.8.4.4 primary
netsh int ip show config
pause
goto end
:B
echo "Setting Static IP Information"
netsh interface ip set address "Connessione alla rete locale (LAN)" static 192.168.102.80 255.255.255.0 192.168.102.254 1
netsh interface ip set dns "Connessione alla rete locale (LAN)" static 8.8.4.4 primary
netsh int ip show config
pause
goto end
:C
echo "Setting Static IP Information"
netsh interface ip set address "Connessione alla rete locale (LAN)" static 192.168.103.80 255.255.255.0 192.168.103.254 1
netsh interface ip set dns "Connessione alla rete locale (LAN)" static 8.8.4.4 primary
netsh int ip show config
pause
goto end
:D
echo "Setting Static IP Information"
netsh interface ip set address "Connessione alla rete locale (LAN)" static 192.168.104.80 255.255.255.0 192.168.104.254 1
netsh interface ip set dns "Connessione alla rete locale (LAN)" static 8.8.4.4 primary
netsh int ip show config
pause
goto end
:E
echo "Setting Static IP Information"
netsh interface ip set address "Connessione alla rete locale (LAN)" static 192.168.105.80 255.255.255.0 192.168.105.254 1
netsh interface ip set dns "Connessione alla rete locale (LAN)" static 8.8.4.4 primary
netsh int ip show config
pause
goto end
:F
@ECHO OFF
ECHO Resetting IP Address and Subnet Mask For DHCP
netsh int ip set address name = "Connessione alla rete locale (LAN)" source = dhcp

ipconfig /renew

ECHO Here are the new settings for %computername%:
netsh int ip show config

pause
goto end
:end
