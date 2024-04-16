
## Add Creds for SMB share by .bat script



Trägt Usernamen udn PWD  für einen Share in den Windows Tresor "WindowsAnmeldeinformationen" ein.







REM "SERVERIP" "USERNAME" "PASSWORD"

REM username muss im Format "USERNAME" ohne Hostname eingegeben werden.
REM Hostname wird automatisch dazugesetzt.

REM ACHTUNG: falls Sonderzeichen im Passwort:
REM Manche muss man escapen 
REM z.B. % musste ich mit %% escapen 
REM z.B. " musste ich mit "" escapen 
REM andere Sonderzeichen bisher nicht. Falls doch, sollte man ^ verwenden. 
REM Mehr: https://www.robvanderwoude.com/escapechars.php
set user=%2
set username=%COMPUTERNAME%\%user%

cmdkey /add:"%1" /u:"%username%" /p:"%3"
