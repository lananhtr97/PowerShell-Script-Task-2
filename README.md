# PowerShell-Script-Task-2
1. This script validates the input parameters.
2. The script validates the input parameters and performs error handling in case of invalid inputs. If any of the input parameters are missing or invalid, the script will prompt you to enter valid inputs before proceeding with account creation.
3. The script checks if the user account already exists in Active Directory before creating a new account to avoid duplicates. If the user account already exists, the script will display a message indicating that the account already exists and will not create a new account.
4. The script creates the user account with appropriate permissions and group memberships based on the department and job title specified.
5. The script generates a random, secure password for the user account and emails it to the user’s email address. The password is generated using the ConvertTo-SecureString cmdlet in PowerShell and is sent to the user’s email address using the Send-MailMessage cmdlet.
6. The script I provided logs all actions taken during the account creation process to a centralized log file. The log file is created using the Start-Transcript cmdlet in PowerShell and is saved to a specified location. The log file contains detailed information about the account creation process, including any errors or warnings that occurred during the process.
