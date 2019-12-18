$filepath = '.\users.csv'

# -delimiter "," 

Import-CSV $filepath | Foreach-Object{
New-ADUser -Name $_.firstname -GivenName $_.firstname -Surname $_.lastname -SamAccountName $_.username -UserPrincipalName $_.email -Path $_.ou -AccountPassword(ConvertTo-SecureString $_.password -AsPlainText -Force) -Enabled $true
    
    <#echo 
    echo $_.moddleInitial
    echo 
    echo 
    echo 
    echo $_.streetaddress
    echo $_.city
    echo $_.zipcode
    echo $_.state
    echo $_.country
    echo $_.department
    echo $_.password
    echo $_.telephone
    echo $_.jobtitle
    echo $_.company
    echo #> 
}

## MENOS FLOW PERO MAS FACIL

#$IP_Array = (Get-Content users.csv)[0].split(",")
#foreach ( $IP in $IP_Array){
#    echo $IP
#}