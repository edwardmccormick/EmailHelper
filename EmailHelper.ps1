$From = "ted.mccormick@gmail.com"
$To = "ted.mccormick@protonmail.com"
$Cc = "YourBoss@YourDomain.com"
$Attachment = "C:\temp\Some random file.txt"
$Subject = "Email Subject - Test Successful"
#$Body = get-content body.html
$Body = "Looks like it worked, now to get it to read an html file."
$SMTPServer = "smtp.gmail.com"
$SMTPPort = "587"
Send-MailMessage -From $From -to $To 
#-Cc $Cc 
-Subject $Subject `
-Body $Body -SmtpServer $SMTPServer -port $SMTPPort -UseSsl `
-Credential (Get-Credential) 
#-Attachments $Attachment