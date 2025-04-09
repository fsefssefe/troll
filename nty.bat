::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFA9TWgCBAE+/Fb4I5/jH/+nHrFkEGucnfe8=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
cls
echo Nettoyage en cours...

:: Suppression des fichiers temporaires
del /s /q "%TEMP%\*.*"
del /s /q "C:\Windows\Temp\*.*"

:: Nettoyage du cache du navigateur (Google Chrome)
del /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache\*.*"

:: Nettoyage du cache du navigateur (Microsoft Edge)
del /s /q "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache\*.*"

:: Nettoyage du cache de Windows Update
net stop wuauserv
rd /s /q "C:\Windows\SoftwareDistribution"
net start wuauserv

:: Vider la corbeille
rd /s /q C:\$Recycle.Bin

:: Fin du nettoyage
echo Nettoyage terminé !
pause
