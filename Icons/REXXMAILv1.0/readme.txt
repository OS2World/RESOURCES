Instructions
------------

RexxMail uses 3 different kinds of icon sets, which can be applied and used independently from each other:

	- folder icons,
	- icons for program objects,
	- stationery icons (mail objects).

Each of these icon sets are to be used/applied in a different way:

1. Folder icons

Icons for RexxMail folders must be placed in the "Icons\Folders" subdirectory of the main program directory.
Rename the existing "Folders" directory (eg. "Folders.org") and copy the new icons to a new "Folders" directory.
Use the "Icons" option of the RexxMail User Folders Utility (FoldUtil.CMD) to automatically apply the new icons to the RexxMail folders.
The names of the icons are self-explanatory. You can undo any changes by renaming the original "Folders" directory and by running FoldUtil.CMD a second time.

2. Program object icons

Icons for the RexxMail program objects can be placed in an arbitrary directory.
The default icon set resides in the "Objects" subdirectory of the main program directory.
To change these icons, use the following command: "RexxMail /SetProgramObjectIcons [directory name]".
If you do not specify a (complete) directory name, RexxMail will use the "Objects" subdirectory.
For additional information, see /setprogramobjecticons in the "RexxMail Reference Guide".

3. Stationery icons

Stationery icons must always reside in a seperate subdirectory of the "Icons\Stationery" subdirectory in the program directory.
Detailed information about the naming convention for these icons can be found under "/Stationery" in the "RexxMail Reference Guide".
(See also "/SetStationery".)

-- 
Luc Van Bogaert
November, 2005.
