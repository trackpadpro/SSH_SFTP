$SCRIPTS = $MyInvocation.MyCommand.Path

$USR = Get-Content -Path "$SCRIPTS\..\..\auth\usr.txt" -TotalCount 1

$DOMAIN = Get-Content -Path "$SCRIPTS\..\..\auth\domain.txt" -TotalCount 1

$PW = Get-Content -Path "$SCRIPTS\..\..\auth\pw.txt" -TotalCount 1

expect $SCRIPTS\..\expectSFTP.tcl $USR $DOMAIN $PW
