/* THE OS/2 Icon Collection (Standard .ICO Edition) Installation Script */

call RxFuncAdd 'SysLoadFuncs', 'RexxUtil', 'SysLoadFuncs'
call SysLoadFuncs

'@echo off'

call SysCls

say '    THE OS/2 Icon Collection #10 (Standard .ICO Edition) Installation'
say ''
say 'This script will put a shadow object of THE OS/2 Icon Collection on your'
say 'Desktop.  If you haven''t read ReadMe.TXT (Read Me First!), press "Q"'
say 'followed by <Enter> to abort now.  Otherwise, press <Enter> to continue...'
pull sig

if left(sig, 1) = 'Q' then do
  say ''
  say 'Installation aborted.  Read ReadMe.TXT, and run Install.CMD again.'
  exit
end

instdir = directory()

rc = SysSetObjectData(instdir, 'OBJECTID=<THEIcnIC>;'||,
                               'ICONFILE='instdir'\F\Folder-Fred 02.ICO;'||,
                               'ICONNFILE=1,'instdir'\F\Folder-Fred 03.ICO;')

say 'Creating shadow object of THE OS/2 Icon Collection folder on your desktop...'
classname = 'WPShadow'
title     = 'THE OS/2 Icon Collection'
location  = '<WP_DESKTOP>'
setup     = 'SHADOWID=<THEIcnIC>;'||,
            'OBJECTID=<THEIcnICS>;'
rc = SysCreateObject(classname, title, location, setup, 'R')
say 'Done.'
say ''

say 'Installation has been successfully completed.'
say 'Do you wish to have the installation script deleted? [N/y]'
pull reply
if left(reply, 1) = 'Y' then do
  'del Install.CMD'
  say 'Done.'
end

Call SysSetObjectData  '<THEIcnICS>', 'OPEN=DEFAULT'
Call SysSetObjectData  '<THEIcnICS>', 'OPEN=DEFAULT'

exit
