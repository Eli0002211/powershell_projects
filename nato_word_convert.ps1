function nato_convert{
$NATOAlphabet = @{
    "A" = "Alpha"
    "B" = "Bravo"
    "C" = "Charlie"
    "D" = "Delta"
    "E" = "Echo"
    "F" = "Foxtrot"
    "G" = "Golf"
    "H" = "Hotel"
    "I" = "India"
    "J" = "Juliet"
    "K" = "Kilo"
    "L" = "Lima"
    "M" = "Mike"
    "N" = "November"
    "O" = "Oscar"
    "P" = "Papa"
    "Q" = "Quebec"
    "R" = "Romeo"
    "S" = "Sierra"
    "T" = "Tango"
    "U" = "Uniform"
    "V" = "Victor"
    "W" = "Whiskey"
    "X" = "X-ray"
    "Y" = "Yankee"
    "Z" = "Zulu"
}
	cls
    $name = (read-host "What word do you want to translate?").ToUpper()
    $translated_list = @()
    $list = $name.tochararray()

    foreach ($letter in $list){
            $translated_list += $NATOAlphabet["$letter"]
        }       
    
    $translated_string = $translated_list -join " "
    write-host $translated_string
	$repeat = (read-host "Translate another word?[Y/N]").ToUpper()
	if ($repeat -eq "Y"){
		nato_convert
	}
}

nato_convert
