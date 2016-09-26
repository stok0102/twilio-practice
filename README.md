ACdef3858fa357671fa0fc461031853c21

4e0a1db98744aec81a5f807d899a1bce

7155982908


RestClient::Request.new(
    :method => :post,
    :url => 'https://api.twilio.com/2010-04-01/Accounts/ACdef3858fa357671fa0fc461031853c21/Messages.json',
    :user => 'ACdef3858fa357671fa0fc461031853c21',
    :password => '4e0a1db98744aec81a5f807d899a1bce',
    :payload => { :Body => 'Hello world!',
                  :To => '7154979902',
                  :From => '7155982908' }
  ).execute
