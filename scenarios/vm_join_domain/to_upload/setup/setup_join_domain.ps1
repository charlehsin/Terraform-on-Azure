$domain = "contoso.com"
$password = "password" | ConvertTo-SecureString -asPlainText -Force
$username = "CONTOSO\username" 
$credential = New-Object System.Management.Automation.PSCredential($username,$password)
Add-Computer -DomainName $domain -Credential $credential