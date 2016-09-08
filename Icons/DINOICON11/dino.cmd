/* Mozilla Folder/icon script */
/* Originally by sehh@altered.com */
/* Altered by mkaply@us.ibm.com */
/* Altered by staedtler-przyborski@web.de to use dino icons */

call RxFuncAdd 'SysLoadFuncs', 'RexxUtil', 'SysLoadFuncs'
call SysLoadFuncs
dir=directory()

rc=SysCreateObject('WPFolder',,
'Mozilla',,
'<WP_DESKTOP>',,
'OBJECTID=<MOZILLAFLDR>;'||,
'ALWAYSSORT=YES;'||,
'ICONFILE='||dir||'\dinofold.ico;'||,
'ICONNFILE=1,'||dir||'\dinofolo.ico;',,
'Update' )

rc=SysCreateObject('WPProgram',,
'Mozilla',,
'<MOZILLAFLDR>',,
'EXENAME='||dir||'\MOZILLA.EXE;'||,
'STARTUPDIR='||dir||';'||,
'OBJECTID=<MOZILLAEXE>;'||,
'ICONFILE='||dir||'\dino.ico;',,
'Update' )

rc=SysCreateObject('WPProgram',,
'Mozilla^Profile Manager',,
'<MOZILLAFLDR>',,
'EXENAME='||dir||'\MOZILLA.EXE;'||,
'PARAMETERS=-ProfileManager;'||,
'STARTUPDIR='||dir||';'||,
'OBJECTID=<MOZILLAPROFMANAGER>;'||,
'ICONFILE='||dir||'\dinoman.ico;',,
'Update' )

rc=SysCreateObject('WPProgram',,
'Mozilla^Mail',,
'<MOZILLAFLDR>',,
'EXENAME='||dir||'\MOZILLA.EXE;'||,
'PARAMETERS=-mail;'||,
'STARTUPDIR='||dir||';'||,
'OBJECTID=<CCINBOX>;'||,
'ICONFILE='||dir||'\dinomail.ico;',,
'Update' )
