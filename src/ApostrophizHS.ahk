/*
################################################################################
############# If you just want to add more hotsrings, scroll down. #############
################################################################################
*/

; Honestly, I don't know what half of this does, its recommended so whatever.
#NoEnv
#SingleInstance force
#Warn
SendMode Input

/*
This is the startup settings and it's creating files in the appdata. If you want to add more hotstrings just look below.
*/

FileCreateDir, %A_AppData%\Apostrophiz\hs
SetWorkingDir, %A_AppData%\Apostrophiz\hs
FileRead, fileData, settings.txt
if ErrorLevel   ; i.e. it's not blank or zero, file doesn't exist
    FileAppend,Settings:,settings.txt

FileRead, settings, settings.txt
IfNotInString, settings, showinfo=false
{
	MsgBox,4,How-To: Aphostrophiz, This program will automatically add apostrophes ( ' ) where they are needed when you type, it will also automatically capitalize.`nPress Control + Shift + R to reload the program`nPress the Pause key on your keyboard to stop what the program does, press again to make it work again.`nThe Program is already running in the background, try it out!`n`nWould you like to see this message next time you run the program?
	IfMsgBox, No
		FileAppend,`nshowinfo=false,settings.txt 
}

IfNotInString, settings, runAtStartup=true
{
	MsgBox,4,Run at startup?, Do you want this program to run when windows starts?
	IfMsgBox, Yes
	{
		SplitPath, A_Scriptname, , , , OutNameNoExt 
		LinkFile=%A_StartupCommon%\%OutNameNoExt%.lnk		
		FileCreateShortcut, %A_ScriptFullPath%, %LinkFile%
		FileAppend,`nrunAtStartup=true,settings.txt
	}
}

/*
Just add more lines with whatever you'd like.
::input::output
Simplicity itself.

For advanced users: notice that this interacts with uppercase letters.
If we have code like this:
::hi::Hello
Then it will behave like this:
hi -> Hello
HI -> HELLO
*/

/*
############################################################## 
############# You made it. Hotstring list below. #############
##############################################################
*/

::alakir::Al'Akir
::anubarak::Anub'arak
::cthun::C'Thun
::ctu::C'Thun
::cth::C'Thun
::chogall::Cho'gall
::gahzrilla::Gahz'rilla
::kelthuzad::Kel'Thuzad
::ktz::Kel'Thuzad
::malganis::Mal'Ganis
::nzoth::N'Zoth
::sneeds::Sneed's
::veklor::Vek'lor
::voljin::Vol'kin
::yshaarj::Y'Shaarj
::ysh::Y'shaarj
::yoggsaron::Yogg-Saron
::alextraza::Alexstrasza
::alexstraza::Alexstrasza
::alextrasza::Alexstrasza
::amgam::Am'gam
::korkron::Kor'kron
::mogushan::Mogu'shan
::nerubar::Nerub'ar
::bgh::Big Game Hunter
::tbk::The Black Knight
::dr7::Dr. Boom
::rafam::Rafaam
