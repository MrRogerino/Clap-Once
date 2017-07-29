class Contact < ApplicationRecord
	belongs_to :users
	has_many :incidents
end
