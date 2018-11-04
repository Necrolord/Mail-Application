################################################################################
# Author: Necrolord
# Date: 11/10/2018
# Version: 0.0.1
# Goal: Installing mail application.
# Comments: Please refer the Additional Notes file.
################################################################################

#!/usr/bin/env python3.6

import smtplib
import getpass

# Client Side
Mail_Of_User = input("Enter your email: ")
Mail_Of_Recipient = input("Enter the recipient's mail: ")
Txt_Head = input("Enter text here: ")

# Authentication
Mail_Password = getpass.getpass("Please enter your password: ")
Mail_Server = smtplib.SMTP('smtp.gmail.com',587)

#
Mail_Server.starttls()

# login
Mail.login(Mail_Of_User, Mail_Password)

Txt_Body = input("Enter the content of your message: ")

# Sending
Mail_Server.sendmail(Mail_Of_User, Mail_Of_Recipient, Txt_Body)

# Quiting
Mail_Of_Server.quit()
