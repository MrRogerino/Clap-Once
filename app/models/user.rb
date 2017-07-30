class User < ApplicationRecord

	#people I follow
	has_many :subscriptions, foreign_key: :followee_id
	has_many :contacts_subscribed_to, class_name: "User", through: :subscriptions, source: :follower

	#people who follow me
	has_many :followings, class_name: "Subscription", foreign_key: :follower_id
	has_many :followers, class_name: "User", through: :followings, source: :followee

	def location
		return [self.latitude, self.longitude]
	end

end
