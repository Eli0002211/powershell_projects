#Create a list of available letters
$letters = @('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'j', 'k', 'm', 'n',
    'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z')

$uppercaseletters = @('A', 'B', 'C', 'D',
    'E', 'F', 'G', 'H', 'J', 'K', 'L','M', 'N', 'P', 'Q', 'R', 'S',
    'T', 'U', 'V', 'W', 'X', 'Y', 'Z')

#Create a list of available numbers
$numbers = @('0', '1', '2', '3', '4', '5', '6', '7','8','9')

#Create a list of available symbols
$symbols = @('!', '#', '$', '%', '&', '(', ')', '*', '+')

#Welcome the user
write-host "Welcome to the Insurer Password Generator!"

while ($userRepeat = $True) {
    do {
#Choose the characters to be included in the password
$password_list = get-random($letters) -count 3
$password_list += get-random($numbers) -count 4
$password_list += get-random($symbols) -count 4
$password_list += get-random($uppercaseletters) -count 4

#scramble the characters selected and concatonate them into a string of 15 digits
#scramble the characters selected and concatenate them into a string of 15 digits
$password_list = Get-Random -InputObject $password_list -Count $password_list.count
$password=""
foreach ($char in 0..14) {
  $password += $password_list[$char]
}
#present the password to the user.
write-host "Password generated:"
write-host $password

#Check if the user wants to create another password, if yes, loop the script, if no, exit.
        $check = Read-Host 'Generate another password? (y/n)?'
        if ($check -eq 'n') {
            $userRepeat = $False
			Exit
        }
    } while ($userRepeat)
}
	