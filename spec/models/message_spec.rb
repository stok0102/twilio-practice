require "rails_helper"

describe Message, :vcr => true do
  it "sends a message" do
    message = Message.new(body: 'hi', to: '7154979902', from: '7155982908')
    expect(message.save).to eq true
  end

  it "doesn't save the message if twilio gives an error" do
    message = Message.new(body: 'hi', to: '1111111', from: '15005550006')
    expect(message.save).to eq false
  end
end
