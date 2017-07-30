class Incident < ApplicationRecord

	def epicenter
		return [self.latitude, self.longitude]
	end
end
