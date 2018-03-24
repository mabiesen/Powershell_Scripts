$Username = "mbiesen@perblu.com";
$Password = "fakepw";
$toemail = "mbiesen@perblah.com";
$subject = "This is a subject line
$body = "This is a body line

function Send-ToEmail(){

    #SETTING EMAIL VARS

    $message = new-object Net.Mail.MailMessage;
    $message.From = $Username;
    $message.To.Add($toemail);
    $message.Subject = $subject;
    $message.Body = $body;

    $smtp = new-object Net.Mail.SmtpClient("smtp.gmail.com", "587");
    $smtp.EnableSSL = $true;
    $smtp.Credentials = New-Object System.Net.NetworkCredential($Username, $Password);
    $smtp.send($message);
 }
