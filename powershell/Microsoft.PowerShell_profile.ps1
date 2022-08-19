# Prompt
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\space.omp.json" |
Invoke-Expression

# Icons
Import-Module -Name Terminal-Icons
Import-Module PSReadLine

# PSReadLine
Set-PSReadLineOption -PredictionSource History
set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadLineOption -EditMode Emacs

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias grep findstr

# Utilities
function which ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue | 
	Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
