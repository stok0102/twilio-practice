require "rails_helper"

describe Message do
  it "sends a message" do
    message = Message.new(body: 'hi', to: '7154979902', from: '15005550006')
    message.save.should be true
  end

  it "doesn't save the message if twilio gives an error" do
    message = Message.new(body: 'hi', to: '1111111', from: '15005550006')
    message.save.should be false
  end
end
