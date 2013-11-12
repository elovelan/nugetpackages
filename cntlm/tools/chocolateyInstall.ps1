$packageName = 'cntlm'
$installerType = 'EXE'
$url = 'http://downloads.sourceforge.net/project/cntlm/cntlm/cntlm%200.92.3/cntlm-0.92.3-setup.exe'
$url64 = $url
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes

Write-Host -ForegroundColor DarkYellow "To finish setup, please complete the following steps:"
Write-Host -NoNewline "1. Edit "Write-Host -NoNewLine -ForegroundColor Cyan "C:\Program Files (x86)\cntlm\cntlm.ini"
Write-Host " and change the following lines"
Write-Host "   to the appropriate values and save the file (you may have to do this "Write-Host "   as administrator):"
Write-Host -ForegroundColor Cyan "     Username"
Write-Host -ForegroundColor Cyan "     Domain"
Write-Host -NoNewLine -ForegroundColor Cyan  "     Proxy"
Write-Host " (your current NTLM proxy address)"
Write-Host -NoNewLine "2. Run "
Write-Host -NoNewLine -ForegroundColor Cyan "C:\Program Files (x86)\cntlm\cntlm.exe -M http://www.google.com"
Write-Host " and"
Write-Host -NoNewLine "   replace the "
Write-Host -NoNewLine -ForegroundColor Cyan "Password"
Write-Host -NoNewLine " line in "
Write-Host -NoNewLine -ForegroundColor Cyan "cntlm.ini"
Write-Host " with the two lines between the dashed"
Write-Host "   lines in the output"
Write-Host -NoNewLine "3. Run "
Write-Host -NoNewLine -ForegroundColor Cyan "net start cntlm"
Write-Host " as administrator"
