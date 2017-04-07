require 'net/smtp'

message = <<MESSAGE_END
From: Easy Everything <bfuwa@yahoo.com>
To: Bode Fuwa <bodefuwa@gmail.com>
Subject: Testing ruby client

This is a test message from a ruby email client.
MESSAGE_END

Net::SMTP.start('localhost') do |smtp|
  smtp.send_message message, "bfuwa@yahoo.com", "bodefuwa@gmail.com"
end

