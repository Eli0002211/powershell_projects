function generate_password {
	cls #clear previous output
		#Create the password by generating a random number between two numbers that have 9 digits.
	$Password = get-random -minimum 100000000 -maximum 999999999 
 
	#Display the password to the user alongside text that can be copied into an email to the new starter.
	write-host "Your avaya deskphone password is:"
	write-host $Password

	#Check if the user wants to create another password, if yes, loop the script, if no, exit.
    $check = Read-Host 'Generate another password? (y/n)?'.ToLower()
    if ($check -eq 'y') {
        generate_password
	
        }
		
    } 
generate_password
	