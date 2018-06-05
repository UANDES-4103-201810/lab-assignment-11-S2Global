require 'rails_helper'
require 'date'

RSpec.describe Message, type: :model do

	it "test attribute valid" do
		@user = create(:user, username: "placeholder", email: "ph@placeholder.com", password: "pass123")
		@message = create(:message, user_id: 1, date: Date.today, content: "Hello world.")
		expect(@message).to be_valid
	end

	it "user not nil" do
		@message2 = build(:message, user_id: nil)
		expect(@message2).to_not be_valid
	end

	it "user exists" do
		@message2 = build(:message, user_id: -1)
		expect(@message2).to_not be_valid
	end

end
