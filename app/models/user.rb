class User < ApplicationRecord
	has_many :contacts
	belongs_to :incedents
end
