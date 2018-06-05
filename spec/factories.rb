require 'date'

FactoryBot.define do
	factory :user do
		username "user"
		email "user@example.com"
		password "pass123"
	end
	factory :message do
		user_id 0
		date Date.today
		content "Example content."
	end
end
