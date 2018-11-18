Expand-Archive -LiteralPath C:\autoit.zip -DestinationPath C:\AutoIt
Remove-Item -LiteralPath C:\autoit.zip
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\AutoIt\install\Aut2Exe", [EnvironmentVariableTarget]::Machine)
