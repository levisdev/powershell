# Icons
Import-Module -Name Terminal-Icons

# Alias
Set-Alias vi nvim

$ENV:STARSHIP_CONFIG = "$HOME\.config\powershell\starship.toml"
Invoke-Expression (&starship init powershell)
