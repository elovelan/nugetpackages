$packageName = 'cntlm'
$installerType = 'EXE'
$url = 'http://downloads.sourceforge.net/project/cntlm/cntlm/cntlm%200.92.3/cntlm-0.92.3-setup.exe' #?ts=1384129400&use_mirror=superb-dca2'
$url64 = $url
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes

Write-Host "To finish setup, please complete the following steps:"
Write-Host "1. Edit C:\Program Files (x86)\cntlm\cntlm.ini and change the following lines"
Write-Host "   to the appropriate values (may have to do this as administrator):"
Write-Host "     Username"
Write-Host "     Domain"
Write-Host "     Proxy (your current NTLM proxy address)"
Write-Host "2. Run 'C:\Program Files (x86)\cntlm\cntlm.exe -H' and copy the line starting"
Write-Host "   with 'PassNTLMv2' into the 'Password' line"
Write-Host "3. Run 'net start cntlm' as administrator"