REM "SERVERIP" "USERNAME" "PASSWORD"

REM username muss im Format "HOSTNAME\USERNAME" eingegeben werden:
REM 
REM ACHTUNG: falls Sonderzeichen im Passwort:
REM Manche muss man escapen 
REM z.B. % musste ich mit %% escapen 
REM z.B. " musste ich mit "" escapen 
REM andere Sonderzeichen bisher nicht. Falls doch, sollte man ^ verwenden. 
REM Mehr: https://www.robvanderwoude.com/escapechars.php

cmdkey /add:"%1" /u:"%2" /p:"%3"