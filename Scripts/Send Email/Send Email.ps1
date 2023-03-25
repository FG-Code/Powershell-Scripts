$Username      = $args[0]
$EmailPassword = $args[1]
$Attachment    = $args[2]



$Username = $Username
$EmailTo = "" 
$EmailFrom = ""
$Subject = ""
$Body = "",

$SMTPServer = "smtp-mail.outlook.com" 
$SMTPMessage = New-Object System.Net.Mail.MailMessage($EmailFrom, $EmailTo, $Subject, $Body)
$Attachment = New-Object System.Net.Mail.Attachment($Attachment)
$SMTPMessage.Attachments.Add($Attachment)
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587) 
$SMTPClient.EnableSsl = $true 
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential($Username, $EmailPassword); 
$SMTPClient.Send($SMTPMessage)