; uninstall.nsi
; Uninstallation script for Wrye Flash NSIS uninstaller.

; !include 'macro_uninstall.nsh' ; Already included from pages.nsi

;-------------------------------- The Uninstallation Code:
    Section "Uninstall"
        ; Remove files and Directories - Directories are only deleted if empty.
        ${If} $CheckState_NV == ${BST_CHECKED}
            ${If} $Path_NV != $Empty
                DeleteRegValue HKLM "SOFTWARE\Wrye Flash" "FalloutNV Path"
                DeleteRegValue HKLM "SOFTWARE\Wrye Flash" "FalloutNV Python Version"
                DeleteRegValue HKLM "SOFTWARE\Wrye Flash" "FalloutNV Standalone Version"
                ;First delete OLD version files:
                Delete "$Path_NV\Data\Bash Patches\Bash_Groups.csv"
                ;Current files:
                Delete "$Path_NV\Data\Bash Patches\taglist.txt"
                RMDir  "$Path_NV\Data\Bash Patches"
                Delete "$Path_NV\Data\Docs\Bash Readme Template.html"
                Delete "$Path_NV\Data\Docs\Bash Readme Template.txt"
                Delete "$Path_NV\Data\Docs\Bashed Lists.html"
                Delete "$Path_NV\Data\Docs\Bashed Lists.txt"
                Delete "$Path_NV\Data\Docs\wtxt_sand_small.css"
                Delete "$Path_NV\Data\Docs\wtxt_teal.css"
                RMDir  "$Path_NV\Data\Docs"
                Delete "$Path_NV\Data\INI Tweaks\bInvalidateOlderFiles, ~Default.ini"
                Delete "$Path_NV\Data\INI Tweaks\bInvalidateOlderFiles, ~Enabled.ini"
                Delete "$Path_NV\Data\INI Tweaks\Border Regions, ~Enabled.ini"
                Delete "$Path_NV\Data\INI Tweaks\Border Regions, Disabled.ini"
                Delete "$Path_NV\Data\INI Tweaks\Fonts 1, ~Default.ini"
                Delete "$Path_NV\Data\INI Tweaks\Grass, Fade 4k-5k.ini"
                Delete "$Path_NV\Data\INI Tweaks\iConsoleTextXPos, ~Fixed.ini"
                Delete "$Path_NV\Data\INI Tweaks\iConsoleTextXPos, Default.ini"
                Delete "$Path_NV\Data\INI Tweaks\Mouse Acceleration, ~Fixed.ini"
                Delete "$Path_NV\Data\INI Tweaks\Mouse Acceleration, Default.ini"
                Delete "$Path_NV\Data\INI Tweaks\Refraction Shader, ~Enabled.ini"
                Delete "$Path_NV\Data\INI Tweaks\Refraction Shader, Disabled.ini"
                Delete "$Path_NV\Data\INI Tweaks\Save Backups, 1.ini"
                Delete "$Path_NV\Data\INI Tweaks\Save Backups, 2.ini"
                Delete "$Path_NV\Data\INI Tweaks\Save Backups, 3.ini"
                Delete "$Path_NV\Data\INI Tweaks\Save Backups, 5.ini"
                RMDir  "$Path_NV\Data\INI Tweaks"
                Delete "$Path_NV\Mopy\bash\__init__.py"
                Delete "$Path_NV\Mopy\bash\balt.py"
                Delete "$Path_NV\Mopy\bash\bapi.py"
                Delete "$Path_NV\Mopy\bash\barb.py"
                Delete "$Path_NV\Mopy\bash\bash.py"
                Delete "$Path_NV\Mopy\bash\basher.py"
                Delete "$Path_NV\Mopy\bash\bashmon.py"
                Delete "$Path_NV\Mopy\bash\belt.py"
                Delete "$Path_NV\Mopy\bash\bish.py"
                Delete "$Path_NV\Mopy\bash\bolt.py"
                Delete "$Path_NV\Mopy\bash\bosh.py"
                Delete "$Path_NV\Mopy\bash\bush.py"
                Delete "$Path_NV\Mopy\bash\cint.py"
                Delete "$Path_NV\Mopy\bash\compiled\7z.dll"
                Delete "$Path_NV\Mopy\bash\compiled\7z.exe"
                Delete "$Path_NV\Mopy\bash\compiled\7zUnicode.exe"
                Delete "$Path_NV\Mopy\bash\compiled\boss32.dll"
                Delete "$Path_NV\Mopy\bash\compiled\boss64.dll"
                Delete "$Path_NV\Mopy\bash\compiled\lzma.exe"
                Delete "$Path_NV\Mopy\bash\db\FalloutNV_ids.pkl"
                Delete "$Path_NV\Mopy\bash\images\3dsmax16.png"
                Delete "$Path_NV\Mopy\bash\images\3dsmax24.png"
                Delete "$Path_NV\Mopy\bash\images\3dsmax32.png"
                Delete "$Path_NV\Mopy\bash\images\abcamberaudioconverter16.png"
                Delete "$Path_NV\Mopy\bash\images\abcamberaudioconverter24.png"
                Delete "$Path_NV\Mopy\bash\images\abcamberaudioconverter32.png"
                Delete "$Path_NV\Mopy\bash\images\anifx16.png"
                Delete "$Path_NV\Mopy\bash\images\anifx24.png"
                Delete "$Path_NV\Mopy\bash\images\anifx32.png"
                Delete "$Path_NV\Mopy\bash\images\artofillusion16.png"
                Delete "$Path_NV\Mopy\bash\images\artofillusion24.png"
                Delete "$Path_NV\Mopy\bash\images\artofillusion32.png"
                Delete "$Path_NV\Mopy\bash\images\artweaver16.png"
                Delete "$Path_NV\Mopy\bash\images\artweaver24.png"
                Delete "$Path_NV\Mopy\bash\images\artweaver32.png"
                Delete "$Path_NV\Mopy\bash\images\audacity16.png"
                Delete "$Path_NV\Mopy\bash\images\audacity24.png"
                Delete "$Path_NV\Mopy\bash\images\audacity32.png"
                Delete "$Path_NV\Mopy\bash\images\autocad16.png"
                Delete "$Path_NV\Mopy\bash\images\autocad24.png"
                Delete "$Path_NV\Mopy\bash\images\autocad32.png"
                Delete "$Path_NV\Mopy\bash\images\bash_16.png"
                Delete "$Path_NV\Mopy\bash\images\bash_16_blue.png"
                Delete "$Path_NV\Mopy\bash\images\bash_24.png"
                Delete "$Path_NV\Mopy\bash\images\bash_24_blue.png"
                Delete "$Path_NV\Mopy\bash\images\bash_32.ico"
                Delete "$Path_NV\Mopy\bash\images\bash_32.png"
                Delete "$Path_NV\Mopy\bash\images\bash_32_2.png"
                Delete "$Path_NV\Mopy\bash\images\bash_32_blue.png"
                Delete "$Path_NV\Mopy\bash\images\bashmon16.png"
                Delete "$Path_NV\Mopy\bash\images\bashmon24.png"
                Delete "$Path_NV\Mopy\bash\images\bashmon32.png"
                Delete "$Path_NV\Mopy\bash\images\blender16.png"
                Delete "$Path_NV\Mopy\bash\images\blender24.png"
                Delete "$Path_NV\Mopy\bash\images\blender32.png"
                Delete "$Path_NV\Mopy\bash\images\boss16.png"
                Delete "$Path_NV\Mopy\bash\images\boss24.png"
                Delete "$Path_NV\Mopy\bash\images\boss32.png"
                Delete "$Path_NV\Mopy\bash\images\brick_edit16.png"
                Delete "$Path_NV\Mopy\bash\images\brick_edit24.png"
                Delete "$Path_NV\Mopy\bash\images\brick_edit32.png"
                Delete "$Path_NV\Mopy\bash\images\brick_error16.png"
                Delete "$Path_NV\Mopy\bash\images\brick_error24.png"
                Delete "$Path_NV\Mopy\bash\images\brick_error32.png"
                Delete "$Path_NV\Mopy\bash\images\brick_go16.png"
                Delete "$Path_NV\Mopy\bash\images\brick_go24.png"
                Delete "$Path_NV\Mopy\bash\images\brick_go32.png"
                Delete "$Path_NV\Mopy\bash\images\brick16.png"
                Delete "$Path_NV\Mopy\bash\images\brick24.png"
                Delete "$Path_NV\Mopy\bash\images\brick32.png"
                Delete "$Path_NV\Mopy\bash\images\bsacommander16.png"
                Delete "$Path_NV\Mopy\bash\images\bsacommander24.png"
                Delete "$Path_NV\Mopy\bash\images\bsacommander32.png"
                Delete "$Path_NV\Mopy\bash\images\cancel.png"
                Delete "$Path_NV\Mopy\bash\images\check.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_blue_imp.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_blue_inc.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_blue_off.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_blue_on.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_blue_on_24.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_blue_on_32.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_green_imp.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_green_inc.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_green_inc_wiz.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_green_off.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_green_off_24.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_green_off_32.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_green_off_wiz.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_green_on.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_green_on_24.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_green_on_32.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_grey_inc.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_grey_off.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_grey_on.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_orange_imp.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_orange_inc.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_orange_inc_wiz.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_orange_off.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_orange_off_wiz.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_orange_on.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_purple_imp.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_purple_inc.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_purple_off.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_purple_on.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_red_imp.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_red_inc.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_red_inc_wiz.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_red_off.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_red_off_24.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_red_off_32.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_red_off_wiz.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_red_on.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_red_x.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_red_x_24.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_red_x_32.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_white_inc.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_white_inc_wiz.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_white_off.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_white_off_wiz.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_white_on.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_yellow_imp.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_yellow_inc.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_yellow_inc_wiz.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_yellow_off.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_yellow_off_wiz.png"
                Delete "$Path_NV\Mopy\bash\images\checkbox_yellow_on.png"
                Delete "$Path_NV\Mopy\bash\images\crazybump16.png"
                Delete "$Path_NV\Mopy\bash\images\crazybump24.png"
                Delete "$Path_NV\Mopy\bash\images\crazybump32.png"
                Delete "$Path_NV\Mopy\bash\images\database_connect16.png"
                Delete "$Path_NV\Mopy\bash\images\database_connect24.png"
                Delete "$Path_NV\Mopy\bash\images\database_connect32.png"
                Delete "$Path_NV\Mopy\bash\images\ddsconverter16.png"
                Delete "$Path_NV\Mopy\bash\images\ddsconverter24.png"
                Delete "$Path_NV\Mopy\bash\images\ddsconverter32.png"
                Delete "$Path_NV\Mopy\bash\images\deeppaint16.png"
                Delete "$Path_NV\Mopy\bash\images\deeppaint24.png"
                Delete "$Path_NV\Mopy\bash\images\deeppaint32.png"
                Delete "$Path_NV\Mopy\bash\images\diamond_green_inc.png"
                Delete "$Path_NV\Mopy\bash\images\diamond_green_inc_wiz.png"
                Delete "$Path_NV\Mopy\bash\images\diamond_green_off.png"
                Delete "$Path_NV\Mopy\bash\images\diamond_green_off_wiz.png"
                Delete "$Path_NV\Mopy\bash\images\diamond_grey_inc.png"
                Delete "$Path_NV\Mopy\bash\images\diamond_grey_off.png"
                Delete "$Path_NV\Mopy\bash\images\diamond_orange_inc.png"
                Delete "$Path_NV\Mopy\bash\images\diamond_orange_inc_wiz.png"
                Delete "$Path_NV\Mopy\bash\images\diamond_orange_off.png"
                Delete "$Path_NV\Mopy\bash\images\diamond_orange_off_wiz.png"
                Delete "$Path_NV\Mopy\bash\images\diamond_red_inc.png"
                Delete "$Path_NV\Mopy\bash\images\diamond_red_inc_wiz.png"
                Delete "$Path_NV\Mopy\bash\images\diamond_red_off.png"
                Delete "$Path_NV\Mopy\bash\images\diamond_red_off_wiz.png"
                Delete "$Path_NV\Mopy\bash\images\diamond_white_inc.png"
                Delete "$Path_NV\Mopy\bash\images\diamond_white_off.png"
                Delete "$Path_NV\Mopy\bash\images\diamond_white_off_wiz.png"
                Delete "$Path_NV\Mopy\bash\images\diamond_yellow_inc.png"
                Delete "$Path_NV\Mopy\bash\images\diamond_yellow_inc_wiz.png"
                Delete "$Path_NV\Mopy\bash\images\diamond_yellow_off.png"
                Delete "$Path_NV\Mopy\bash\images\diamond_yellow_off_wiz.png"
                Delete "$Path_NV\Mopy\bash\images\doc_on.png"
                Delete "$Path_NV\Mopy\bash\images\docbrowser16.png"
                Delete "$Path_NV\Mopy\bash\images\docbrowser24.png"
                Delete "$Path_NV\Mopy\bash\images\docbrowser32.png"
                Delete "$Path_NV\Mopy\bash\images\dogwaffle16.png"
                Delete "$Path_NV\Mopy\bash\images\dogwaffle24.png"
                Delete "$Path_NV\Mopy\bash\images\dogwaffle32.png"
                Delete "$Path_NV\Mopy\bash\images\dos.png"
                Delete "$Path_NV\Mopy\bash\images\eggtranslator16.png"
                Delete "$Path_NV\Mopy\bash\images\eggtranslator24.png"
                Delete "$Path_NV\Mopy\bash\images\eggtranslator32.png"
                Delete "$Path_NV\Mopy\bash\images\error.jpg"
                Delete "$Path_NV\Mopy\bash\images\evgaprecision16.png"
                Delete "$Path_NV\Mopy\bash\images\evgaprecision24.png"
                Delete "$Path_NV\Mopy\bash\images\evgaprecision32.png"
                Delete "$Path_NV\Mopy\bash\images\exclamation.png"
                Delete "$Path_NV\Mopy\bash\images\fallout316.png"
                Delete "$Path_NV\Mopy\bash\images\fallout324.png"
                Delete "$Path_NV\Mopy\bash\images\fallout332.png"
                Delete "$Path_NV\Mopy\bash\images\falloutnv16.png"
                Delete "$Path_NV\Mopy\bash\images\falloutnv24.png"
                Delete "$Path_NV\Mopy\bash\images\falloutnv32.png"
                Delete "$Path_NV\Mopy\bash\images\faststoneimageviewer16.png"
                Delete "$Path_NV\Mopy\bash\images\faststoneimageviewer24.png"
                Delete "$Path_NV\Mopy\bash\images\faststoneimageviewer32.png"
                Delete "$Path_NV\Mopy\bash\images\filezilla16.png"
                Delete "$Path_NV\Mopy\bash\images\filezilla24.png"
                Delete "$Path_NV\Mopy\bash\images\filezilla32.png"
                Delete "$Path_NV\Mopy\bash\images\finish.png"
                Delete "$Path_NV\Mopy\bash\images\fnv4gb16.png"
                Delete "$Path_NV\Mopy\bash\images\fnv4gb24.png"
                Delete "$Path_NV\Mopy\bash\images\fnv4gb32.png"
                Delete "$Path_NV\Mopy\bash\images\fnvedit16.png"
                Delete "$Path_NV\Mopy\bash\images\fnvedit24.png"
                Delete "$Path_NV\Mopy\bash\images\fnvedit32.png"
                Delete "$Path_NV\Mopy\bash\images\fnvmasterrestore16.png"
                Delete "$Path_NV\Mopy\bash\images\fnvmasterrestore24.png"
                Delete "$Path_NV\Mopy\bash\images\fnvmasterrestore32.png"
                Delete "$Path_NV\Mopy\bash\images\fnvmasterupdate16.png"
                Delete "$Path_NV\Mopy\bash\images\fnvmasterupdate24.png"
                Delete "$Path_NV\Mopy\bash\images\fnvmasterupdate32.png"
                Delete "$Path_NV\Mopy\bash\images\fo3edit16.png"
                Delete "$Path_NV\Mopy\bash\images\fo3edit24.png"
                Delete "$Path_NV\Mopy\bash\images\fo3edit32.png"
                Delete "$Path_NV\Mopy\bash\images\fo3masterrestore16.png"
                Delete "$Path_NV\Mopy\bash\images\fo3masterrestore24.png"
                Delete "$Path_NV\Mopy\bash\images\fo3masterrestore32.png"
                Delete "$Path_NV\Mopy\bash\images\fo3masterupdate16.png"
                Delete "$Path_NV\Mopy\bash\images\fo3masterupdate24.png"
                Delete "$Path_NV\Mopy\bash\images\fo3masterupdate32.png"
                Delete "$Path_NV\Mopy\bash\images\fomm16.png"
                Delete "$Path_NV\Mopy\bash\images\fomm24.png"
                Delete "$Path_NV\Mopy\bash\images\fomm32.png"
                Delete "$Path_NV\Mopy\bash\images\fraps16.png"
                Delete "$Path_NV\Mopy\bash\images\fraps24.png"
                Delete "$Path_NV\Mopy\bash\images\fraps32.png"
                Delete "$Path_NV\Mopy\bash\images\freemind16.png"
                Delete "$Path_NV\Mopy\bash\images\freemind24.png"
                Delete "$Path_NV\Mopy\bash\images\freemind32.png"
                Delete "$Path_NV\Mopy\bash\images\freemind8.1custom_32.png"
                Delete "$Path_NV\Mopy\bash\images\freeplane16.png"
                Delete "$Path_NV\Mopy\bash\images\freeplane24.png"
                Delete "$Path_NV\Mopy\bash\images\freeplane32.png"
                Delete "$Path_NV\Mopy\bash\images\geck16.png"
                Delete "$Path_NV\Mopy\bash\images\geck24.png"
                Delete "$Path_NV\Mopy\bash\images\geck32.png"
                Delete "$Path_NV\Mopy\bash\images\genetica16.png"
                Delete "$Path_NV\Mopy\bash\images\genetica24.png"
                Delete "$Path_NV\Mopy\bash\images\genetica32.png"
                Delete "$Path_NV\Mopy\bash\images\geneticaviewer16.png"
                Delete "$Path_NV\Mopy\bash\images\geneticaviewer24.png"
                Delete "$Path_NV\Mopy\bash\images\geneticaviewer32.png"
                Delete "$Path_NV\Mopy\bash\images\gimp16.png"
                Delete "$Path_NV\Mopy\bash\images\gimp24.png"
                Delete "$Path_NV\Mopy\bash\images\gimp32.png"
                Delete "$Path_NV\Mopy\bash\images\gimpshop16.png"
                Delete "$Path_NV\Mopy\bash\images\gimpshop24.png"
                Delete "$Path_NV\Mopy\bash\images\gimpshop32.png"
                Delete "$Path_NV\Mopy\bash\images\gmax16.png"
                Delete "$Path_NV\Mopy\bash\images\gmax24.png"
                Delete "$Path_NV\Mopy\bash\images\gmax32.png"
                Delete "$Path_NV\Mopy\bash\images\group_gear16.png"
                Delete "$Path_NV\Mopy\bash\images\group_gear24.png"
                Delete "$Path_NV\Mopy\bash\images\group_gear32.png"
                Delete "$Path_NV\Mopy\bash\images\help16.png"
                Delete "$Path_NV\Mopy\bash\images\help24.png"
                Delete "$Path_NV\Mopy\bash\images\help32.png"
                Delete "$Path_NV\Mopy\bash\images\icofx16.png"
                Delete "$Path_NV\Mopy\bash\images\icofx24.png"
                Delete "$Path_NV\Mopy\bash\images\icofx32.png"
                Delete "$Path_NV\Mopy\bash\images\ini-all natural.png"
                Delete "$Path_NV\Mopy\bash\images\ini-oblivion.png"
                Delete "$Path_NV\Mopy\bash\images\inkscape16.png"
                Delete "$Path_NV\Mopy\bash\images\inkscape24.png"
                Delete "$Path_NV\Mopy\bash\images\inkscape32.png"
                Delete "$Path_NV\Mopy\bash\images\insanity'sreadmegenerator16.png"
                Delete "$Path_NV\Mopy\bash\images\insanity'sreadmegenerator24.png"
                Delete "$Path_NV\Mopy\bash\images\insanity'sreadmegenerator32.png"
                Delete "$Path_NV\Mopy\bash\images\insanity'srng16.png"
                Delete "$Path_NV\Mopy\bash\images\insanity'srng24.png"
                Delete "$Path_NV\Mopy\bash\images\insanity'srng32.png"
                Delete "$Path_NV\Mopy\bash\images\interactivemapofcyrodiil16.png"
                Delete "$Path_NV\Mopy\bash\images\interactivemapofcyrodiil24.png"
                Delete "$Path_NV\Mopy\bash\images\interactivemapofcyrodiil32.png"
                Delete "$Path_NV\Mopy\bash\images\irfanview16.png"
                Delete "$Path_NV\Mopy\bash\images\irfanview24.png"
                Delete "$Path_NV\Mopy\bash\images\irfanview32.png"
                Delete "$Path_NV\Mopy\bash\images\isobl16.png"
                Delete "$Path_NV\Mopy\bash\images\isobl24.png"
                Delete "$Path_NV\Mopy\bash\images\isobl32.png"
                Delete "$Path_NV\Mopy\bash\images\logitechkeyboard16.png"
                Delete "$Path_NV\Mopy\bash\images\logitechkeyboard24.png"
                Delete "$Path_NV\Mopy\bash\images\logitechkeyboard32.png"
                Delete "$Path_NV\Mopy\bash\images\mapzone16.png"
                Delete "$Path_NV\Mopy\bash\images\mapzone24.png"
                Delete "$Path_NV\Mopy\bash\images\mapzone32.png"
                Delete "$Path_NV\Mopy\bash\images\masterrestore16.png"
                Delete "$Path_NV\Mopy\bash\images\masterrestore24.png"
                Delete "$Path_NV\Mopy\bash\images\masterrestore32.png"
                Delete "$Path_NV\Mopy\bash\images\masterupdate16.png"
                Delete "$Path_NV\Mopy\bash\images\masterupdate24.png"
                Delete "$Path_NV\Mopy\bash\images\masterupdate32.png"
                Delete "$Path_NV\Mopy\bash\images\maya16.png"
                Delete "$Path_NV\Mopy\bash\images\maya24.png"
                Delete "$Path_NV\Mopy\bash\images\maya32.png"
                Delete "$Path_NV\Mopy\bash\images\mcowavi32.png"
                Delete "$Path_NV\Mopy\bash\images\mediamonkey16.png"
                Delete "$Path_NV\Mopy\bash\images\mediamonkey24.png"
                Delete "$Path_NV\Mopy\bash\images\mediamonkey32.png"
                Delete "$Path_NV\Mopy\bash\images\milkshape3d16.png"
                Delete "$Path_NV\Mopy\bash\images\milkshape3d24.png"
                Delete "$Path_NV\Mopy\bash\images\milkshape3d32.png"
                Delete "$Path_NV\Mopy\bash\images\modchecker16.png"
                Delete "$Path_NV\Mopy\bash\images\modchecker24.png"
                Delete "$Path_NV\Mopy\bash\images\modchecker32.png"
                Delete "$Path_NV\Mopy\bash\images\modlistgenerator16.png"
                Delete "$Path_NV\Mopy\bash\images\modlistgenerator24.png"
                Delete "$Path_NV\Mopy\bash\images\modlistgenerator32.png"
                Delete "$Path_NV\Mopy\bash\images\mudbox16.png"
                Delete "$Path_NV\Mopy\bash\images\mudbox24.png"
                Delete "$Path_NV\Mopy\bash\images\mudbox32.png"
                Delete "$Path_NV\Mopy\bash\images\mypaint16.png"
                Delete "$Path_NV\Mopy\bash\images\mypaint24.png"
                Delete "$Path_NV\Mopy\bash\images\mypaint32.png"
                Delete "$Path_NV\Mopy\bash\images\nifskope16.png"
                Delete "$Path_NV\Mopy\bash\images\nifskope24.png"
                Delete "$Path_NV\Mopy\bash\images\nifskope32.png"
                Delete "$Path_NV\Mopy\bash\images\notepad++16.png"
                Delete "$Path_NV\Mopy\bash\images\notepad++24.png"
                Delete "$Path_NV\Mopy\bash\images\notepad++32.png"
                Delete "$Path_NV\Mopy\bash\images\nvidiamelody16.png"
                Delete "$Path_NV\Mopy\bash\images\nvidiamelody24.png"
                Delete "$Path_NV\Mopy\bash\images\nvidiamelody32.png"
                Delete "$Path_NV\Mopy\bash\images\oblivion16.png"
                Delete "$Path_NV\Mopy\bash\images\oblivion24.png"
                Delete "$Path_NV\Mopy\bash\images\oblivion32.png"
                Delete "$Path_NV\Mopy\bash\images\oblivionbookcreator16.png"
                Delete "$Path_NV\Mopy\bash\images\oblivionbookcreator24.png"
                Delete "$Path_NV\Mopy\bash\images\oblivionbookcreator32.png"
                Delete "$Path_NV\Mopy\bash\images\oblivionfaceexchangerlite16.png"
                Delete "$Path_NV\Mopy\bash\images\oblivionfaceexchangerlite24.png"
                Delete "$Path_NV\Mopy\bash\images\oblivionfaceexchangerlite32.png"
                Delete "$Path_NV\Mopy\bash\images\obmm16.png"
                Delete "$Path_NV\Mopy\bash\images\obmm24.png"
                Delete "$Path_NV\Mopy\bash\images\obmm32.png"
                Delete "$Path_NV\Mopy\bash\images\page_find16.png"
                Delete "$Path_NV\Mopy\bash\images\page_find24.png"
                Delete "$Path_NV\Mopy\bash\images\page_find32.png"
                Delete "$Path_NV\Mopy\bash\images\paint.net16.png"
                Delete "$Path_NV\Mopy\bash\images\paint.net24.png"
                Delete "$Path_NV\Mopy\bash\images\paint.net32.png"
                Delete "$Path_NV\Mopy\bash\images\paintshopprox316.png"
                Delete "$Path_NV\Mopy\bash\images\paintshopprox324.png"
                Delete "$Path_NV\Mopy\bash\images\paintshopprox332.png"
                Delete "$Path_NV\Mopy\bash\images\photobie16.png"
                Delete "$Path_NV\Mopy\bash\images\photobie24.png"
                Delete "$Path_NV\Mopy\bash\images\photobie32.png"
                Delete "$Path_NV\Mopy\bash\images\photofiltre16.png"
                Delete "$Path_NV\Mopy\bash\images\photofiltre24.png"
                Delete "$Path_NV\Mopy\bash\images\photofiltre32.png"
                Delete "$Path_NV\Mopy\bash\images\photoscape16.png"
                Delete "$Path_NV\Mopy\bash\images\photoscape24.png"
                Delete "$Path_NV\Mopy\bash\images\photoscape32.png"
                Delete "$Path_NV\Mopy\bash\images\photoseam16.png"
                Delete "$Path_NV\Mopy\bash\images\photoseam24.png"
                Delete "$Path_NV\Mopy\bash\images\photoseam32.png"
                Delete "$Path_NV\Mopy\bash\images\photoshop16.png"
                Delete "$Path_NV\Mopy\bash\images\photoshop24.png"
                Delete "$Path_NV\Mopy\bash\images\photoshop32.png"
                Delete "$Path_NV\Mopy\bash\images\pixelstudiopro16.png"
                Delete "$Path_NV\Mopy\bash\images\pixelstudiopro24.png"
                Delete "$Path_NV\Mopy\bash\images\pixelstudiopro32.png"
                Delete "$Path_NV\Mopy\bash\images\pixia16.png"
                Delete "$Path_NV\Mopy\bash\images\pixia24.png"
                Delete "$Path_NV\Mopy\bash\images\pixia32.png"
                Delete "$Path_NV\Mopy\bash\images\radvideotools16.png"
                Delete "$Path_NV\Mopy\bash\images\radvideotools24.png"
                Delete "$Path_NV\Mopy\bash\images\radvideotools32.png"
                Delete "$Path_NV\Mopy\bash\images\randomnpc16.png"
                Delete "$Path_NV\Mopy\bash\images\randomnpc24.png"
                Delete "$Path_NV\Mopy\bash\images\randomnpc32.png"
                Delete "$Path_NV\Mopy\bash\images\red_x.png"
                Delete "$Path_NV\Mopy\bash\images\save_off.png"
                Delete "$Path_NV\Mopy\bash\images\save_on.png"
                Delete "$Path_NV\Mopy\bash\images\sculptris16.png"
                Delete "$Path_NV\Mopy\bash\images\sculptris24.png"
                Delete "$Path_NV\Mopy\bash\images\sculptris32.png"
                Delete "$Path_NV\Mopy\bash\images\selectmany.jpg"
                Delete "$Path_NV\Mopy\bash\images\selectone.jpg"
                Delete "$Path_NV\Mopy\bash\images\softimagemodtool16.png"
                Delete "$Path_NV\Mopy\bash\images\softimagemodtool24.png"
                Delete "$Path_NV\Mopy\bash\images\softimagemodtool32.png"
                Delete "$Path_NV\Mopy\bash\images\speedtree16.png"
                Delete "$Path_NV\Mopy\bash\images\speedtree24.png"
                Delete "$Path_NV\Mopy\bash\images\speedtree32.png"
                Delete "$Path_NV\Mopy\bash\images\steam16.png"
                Delete "$Path_NV\Mopy\bash\images\steam24.png"
                Delete "$Path_NV\Mopy\bash\images\steam32.png"
                Delete "$Path_NV\Mopy\bash\images\switch16.png"
                Delete "$Path_NV\Mopy\bash\images\switch24.png"
                Delete "$Path_NV\Mopy\bash\images\switch32.png"
                Delete "$Path_NV\Mopy\bash\images\table_error16.png"
                Delete "$Path_NV\Mopy\bash\images\table_error24.png"
                Delete "$Path_NV\Mopy\bash\images\table_error32.png"
                Delete "$Path_NV\Mopy\bash\images\tabula16.png"
                Delete "$Path_NV\Mopy\bash\images\tabula24.png"
                Delete "$Path_NV\Mopy\bash\images\tabula32.png"
                Delete "$Path_NV\Mopy\bash\images\tes4edit16.png"
                Delete "$Path_NV\Mopy\bash\images\tes4edit24.png"
                Delete "$Path_NV\Mopy\bash\images\tes4edit32.png"
                Delete "$Path_NV\Mopy\bash\images\tes4files16.png"
                Delete "$Path_NV\Mopy\bash\images\tes4files24.png"
                Delete "$Path_NV\Mopy\bash\images\tes4files32.png"
                Delete "$Path_NV\Mopy\bash\images\tes4gecko16.png"
                Delete "$Path_NV\Mopy\bash\images\tes4gecko24.png"
                Delete "$Path_NV\Mopy\bash\images\tes4gecko32.png"
                Delete "$Path_NV\Mopy\bash\images\tes4lodgen16.png"
                Delete "$Path_NV\Mopy\bash\images\tes4lodgen24.png"
                Delete "$Path_NV\Mopy\bash\images\tes4lodgen32.png"
                Delete "$Path_NV\Mopy\bash\images\tes4trans16.png"
                Delete "$Path_NV\Mopy\bash\images\tes4trans24.png"
                Delete "$Path_NV\Mopy\bash\images\tes4trans32.png"
                Delete "$Path_NV\Mopy\bash\images\tes4view16.png"
                Delete "$Path_NV\Mopy\bash\images\tes4view24.png"
                Delete "$Path_NV\Mopy\bash\images\tes4view32.png"
                Delete "$Path_NV\Mopy\bash\images\tescs16.png"
                Delete "$Path_NV\Mopy\bash\images\tescs24.png"
                Delete "$Path_NV\Mopy\bash\images\tescs32.png"
                Delete "$Path_NV\Mopy\bash\images\texturemaker16.png"
                Delete "$Path_NV\Mopy\bash\images\texturemaker24.png"
                Delete "$Path_NV\Mopy\bash\images\texturemaker32.png"
                Delete "$Path_NV\Mopy\bash\images\treed16.png"
                Delete "$Path_NV\Mopy\bash\images\treed24.png"
                Delete "$Path_NV\Mopy\bash\images\treed32.png"
                Delete "$Path_NV\Mopy\bash\images\twistedbrush16.png"
                Delete "$Path_NV\Mopy\bash\images\twistedbrush24.png"
                Delete "$Path_NV\Mopy\bash\images\twistedbrush32.png"
                Delete "$Path_NV\Mopy\bash\images\versions.png"
                Delete "$Path_NV\Mopy\bash\images\wings3d16.png"
                Delete "$Path_NV\Mopy\bash\images\wings3d24.png"
                Delete "$Path_NV\Mopy\bash\images\wings3d32.png"
                Delete "$Path_NV\Mopy\bash\images\winmerge16.png"
                Delete "$Path_NV\Mopy\bash\images\winmerge24.png"
                Delete "$Path_NV\Mopy\bash\images\winmerge32.png"
                Delete "$Path_NV\Mopy\bash\images\winsnap16.png"
                Delete "$Path_NV\Mopy\bash\images\winsnap24.png"
                Delete "$Path_NV\Mopy\bash\images\winsnap32.png"
                Delete "$Path_NV\Mopy\bash\images\wizard.png"
                Delete "$Path_NV\Mopy\bash\images\wizardscripthighlighter.jpg"
                Delete "$Path_NV\Mopy\bash\images\wrye_monkey_87.jpg"
                Delete "$Path_NV\Mopy\bash\images\wryebash_01.png"
                Delete "$Path_NV\Mopy\bash\images\wryebash_02.png"
                Delete "$Path_NV\Mopy\bash\images\wryebash_03.png"
                Delete "$Path_NV\Mopy\bash\images\wryebash_04.png"
                Delete "$Path_NV\Mopy\bash\images\wryebash_05.png"
                Delete "$Path_NV\Mopy\bash\images\wryebash_06.png"
                Delete "$Path_NV\Mopy\bash\images\wryebash_07.png"
                Delete "$Path_NV\Mopy\bash\images\wryebash_08.png"
                Delete "$Path_NV\Mopy\bash\images\wryebash_docbrowser.png"
                Delete "$Path_NV\Mopy\bash\images\wryebash_peopletab.png"
                Delete "$Path_NV\Mopy\bash\images\wryemonkey16.jpg"
                Delete "$Path_NV\Mopy\bash\images\wtv16.png"
                Delete "$Path_NV\Mopy\bash\images\wtv24.png"
                Delete "$Path_NV\Mopy\bash\images\wtv32.png"
                Delete "$Path_NV\Mopy\bash\images\x.png"
                Delete "$Path_NV\Mopy\bash\images\xnormal16.png"
                Delete "$Path_NV\Mopy\bash\images\xnormal24.png"
                Delete "$Path_NV\Mopy\bash\images\xnormal32.png"
                Delete "$Path_NV\Mopy\bash\images\xnview16.png"
                Delete "$Path_NV\Mopy\bash\images\xnview24.png"
                Delete "$Path_NV\Mopy\bash\images\xnview32.png"
                Delete "$Path_NV\Mopy\bash\images\zoom_on.png"
                Delete "$Path_NV\Mopy\bash\l10n\de.txt"
                Delete "$Path_NV\Mopy\bash\l10n\Italian.txt"
                Delete "$Path_NV\Mopy\bash\l10n\Japanese.txt"
                Delete "$Path_NV\Mopy\bash\l10n\pt_opt.txt"
                Delete "$Path_NV\Mopy\bash\l10n\Russian.txt"
                Delete "$Path_NV\Mopy\bash\ScriptParser.py"
                RMDir  "$Path_NV\Mopy\bash\compiled"
                RMDir  "$Path_NV\Mopy\bash\l10n"
                RMDir  "$Path_NV\Mopy\bash\db"
                RMDir  "$Path_NV\Mopy\bash\images"
                RMDir  "$Path_NV\Mopy\bash"
                Delete "$Path_NV\Mopy\bash_default.ini"
                Delete "$Path_NV\Mopy\license.txt"
                Delete "$Path_NV\Mopy\templates\Bashed Patch, 0.esp"
                Delete "$Path_NV\Mopy\templates\Blank.esp"
                RMDir  "$Path_NV\Mopy\templates"
                Delete "$Path_NV\Mopy\Wizard Images\EnglishUSA.jpg"
                Delete "$Path_NV\Mopy\Wizard Images\French.jpg"
                Delete "$Path_NV\Mopy\Wizard Images\German.jpg"
                Delete "$Path_NV\Mopy\Wizard Images\Italian.jpg"
                Delete "$Path_NV\Mopy\Wizard Images\No.jpg"
                Delete "$Path_NV\Mopy\Wizard Images\Yes.jpg"
                RMDir  "$Path_NV\Mopy\Wizard Images"
                Delete "$Path_NV\Mopy\WizardDocs.txt"
                Delete "$Path_NV\Mopy\wizards.html"
                Delete "$Path_NV\Mopy\wizards.txt"
                Delete "$Path_NV\Mopy\Wrye Flash Debug.bat"
                Delete "$Path_NV\Mopy\Wrye Flash Launcher.pyw"
                Delete "$Path_NV\Mopy\Wrye Flash.html"
                Delete "$Path_NV\Mopy\Wrye Bash.txt"
                Delete "$Path_NV\Mopy\Wrye Flash.txt"
                RMDir  "$Path_NV\Mopy"
                ; what does this line do?
                Delete "$SMPROGRAMS\Wrye Flash\*falloutnv*"
            ${EndIf}
        ${EndIf}

        ;If it is a complete uninstall remove the shared data:
        ReadRegStr $Path_NV HKLM "Software\Wrye Flash" "FalloutNV Path"
        ${If} $Path_NV == $Empty
            DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Wrye Flash"
            ReadRegStr $0 HKLM "Software\Wrye Flash" "Installer Path"
            DeleteRegKey HKLM "SOFTWARE\Wrye Flash"
            ;Delete stupid Windows created registry keys:
            DeleteRegKey HKCU "Software\Microsoft\Windows\CurrentVersion\App Management\ARPCache\Wrye Flash"
            DeleteRegValue HKCR "Local Settings\Software\Microsoft\Windows\Shell\MuiCache" "$COMMONFILES\Wrye Flash\Uninstall.exe"
            DeleteRegValue HKCU "Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" "$COMMONFILES\Wrye Flash\Uninstall.exe"
            DeleteRegValue HKCU "Software\Microsoft\Windows\ShellNoRoam\MuiCache" "$COMMONFILES\Wrye Flash\Uninstall.exe"
            DeleteRegValue HKCR "Local Settings\Software\Microsoft\Windows\Shell\MuiCache" "$0"
            DeleteRegValue HKCU "Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" "$0"
            DeleteRegValue HKCU "Software\Microsoft\Windows\ShellNoRoam\MuiCache" "$0"
            Delete "$SMPROGRAMS\Wrye Flash\*.*"
            RMDir "$SMPROGRAMS\Wrye Flash"
            Delete "$COMMONFILES\Wrye Flash\*.*"
            RMDir "$COMMONFILES\Wrye Flash"
        ${EndIf}
        SectionEnd