
while ($userRepeat = $True) {
do {
	#Ask the user for the account to be enabled
$User = read-host "What is the user UPN, ie joe.bloggs?"

#enable the specified account
set-aduser -identity $User -enabled $true
Write-host "Account has been enabled"
} while ($userExists)

#Ask if the user wants to unlock another account, and either loop or end the script depending on answer.
$check = Read-Host 'Process another user? (y/n)?'

    if ($check -eq 'n') {
        $userRepeat = $False
		exit
    }
	
}