Param(
    [Parameter(Mandatory=$true)]
    [string]$UserName,
    [Parameter(Mandatory=$true)]
    [string]$EmailAddress,
    [Parameter(Mandatory=$true)]
    [string]$Department,
    [Parameter(Mandatory=$true)]
    [string]$JobTitle,
    [Parameter(Mandatory=$true)]
    [string]$Password
)

$ADUser = Get-ADUser -Filter {EmailAddress -eq $EmailAddress}
if ($ADUser) {
    Write-Host "User account already exists in Active Directory"
} else {
    $SecurePassword = ConvertTo-SecureString -String $Password -AsPlainText -Force
    $NewUserParams = @{
        'Name'              = $UserName
        'EmailAddress'     = $EmailAddress
        'Department'        = $Department
        'Title'             = $JobTitle
        'AccountPassword'   = $SecurePassword
        'Enabled'           = $true
        'ChangePasswordAtLogon' = $true
        'Path'              = "OU=Users,DC=contoso,DC=com"
    }
    New-ADUser @NewUserParams -ErrorAction Stop
}