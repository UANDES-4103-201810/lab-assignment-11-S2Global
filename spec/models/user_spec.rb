require 'rails_helper'

RSpec.describe User, type: :model do

	it "test atribute valid" do
		@user = create(:user, username: "placeholder", email: "ph@placeholder.com", password: "pass123")
		expect(@user).to be_valid
	end

	it "username unique" do
		@user = create(:user, username: "placeholder", email: "ph@placeholder.com", password: "pass123")
		@user2 = build(:user, username: "placeholder")
		expect(@user2).to_not be_valid
	end

	it "email unique" do
		@user = create(:user, username: "placeholder", email: "ph@placeholder.com", password: "pass123")
		@user2 = build(:user, email: "ph@placeholder.com")
		expect(@user2).to_not be_valid
	end

	it "username length" do
		@user = build(:user, username: "placeholder12345678900987654321", email: "ph@placeholder.com", password: "pass123")
		expect(@user).to_not be_valid
	end

end
