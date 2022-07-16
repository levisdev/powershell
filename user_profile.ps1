# PSReadLine
Import-Module -Name PSReadLine
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineOption -BellStyle none
Set-PSReadLineKeyHandler -Key Ctrl-j -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key Ctrl-k -Function HistorySearchForward

# Icons
Import-Module -Name Terminal-Icons

$ENV:STARSHIP_CONFIG = "$HOME\.config\powershell\starship.toml"
Invoke-Expression (&starship init powershell)
