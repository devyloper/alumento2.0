<?php
ini_set("SMTP","ssl://smtp.gmail.com");
ini_set("smtp_port","587");
$to_email = "0112cs191020@gmail.com";
$subject = "Simple Email Test via PHP";
$body = "Hi, This is test email send by PHP Script";
$headers = "From: sender email";

if (mail($to_email, $subject, $body, $headers)) {
    echo "Email successfully sent to $to_email...";
} else {
    echo "Email sending failed...";
}
?>