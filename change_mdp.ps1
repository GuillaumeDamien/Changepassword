﻿$user = 'root'
$pswd = 'toto123'
$newPswd = 'Lapin12'
$esx = get-vmhost -name MonESX.local.fr
$srv = Connect-VIServer -Server $esx.Name -User $user -Password $pswd 4> $null
   if($srv){
        Set-VMHostAccount -UserAccount $user -Password $newPswd -Server $srv -Confirm:$false
        Disconnect-VIServer -Server $esx.Name -Confirm:$false
                }

    else    {
Write-Host "Logon failed $($esx.Name)"
                }