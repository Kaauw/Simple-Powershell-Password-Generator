function Set-Password() {

	param (
        [Parameter(Mandatory=$True,
		HelpMessage="Lenght of the password")][Int]$Lenght
	)
    
    $passwordSize = $Lenght
    $lowerChar = @('a','b','c','d','e','f','g','h','i','j','k','m','n','o','q','r','s','t','u','v','w','x','y','z')
    $upperChar = @('A','B','C','D','E','F','G','H','I','J','K','L','M','N','Q','R','S','T','U','V','W','X','Y','Z') 
    $numberChar = @('1','2','3','4','5','6','7','8','9','0')
    $specialChar = @('@','&',';',',','#','*')

    for($i=1; $i -le $passwordSize ; $i++) {
        
        $randChar = Get-Random -Minimum 1 -Maximum 4
        switch($randChar){
            1 { $password += (Get-Random $lowerChar) -join '' }
            2 { $password += (Get-Random $upperChar) -join '' }
            3 { $password += (Get-Random $numberChar) -join '' }
            4 { $password += (Get-Random $specialChar) -join '' }
        }
    }
    return $password
}