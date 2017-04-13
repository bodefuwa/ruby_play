require 'twilio-ruby'

def send_message #(phone_number)
# To find these visit https://www.twilio.com/user/account
 account_sid = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
 auth_token = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
 

  @client = Twilio::REST::Client.new account_sid, auth_token

  @message = @client.messages.create(
    to: "+11234567890",
    from: "+10987654321",
    body: "Hello! Sending a twilio demo"
  )
end
send_message
