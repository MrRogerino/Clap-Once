class Incident < ApplicationRecord
	EARTH_RADIUS = 3961

	def epicenter
		return [self.latitude, self.longitude]
	end

	def affected_users
		affected_users = []
    User.find_each do |user|
      if distance(self.epicenter, user.location) < radius_affected(self.severity)
        affected_users << user
      end
    end

		return affected_users
	end

	private

  def radius_affected(severity)
    case severity
    when "moderate"
      return 3
    when "severe"
      return 5
    end
  end

  def distance(epicenter,user_location) #gets distance between two points (in miles)
    d_longitude = toRadians((epicenter[1]-user_location[1]))
    d_latitude = toRadians((epicenter[0]-user_location[0]))

    sin_d_long = Math.sin(d_longitude)
    sin_d_lat = Math.sin(d_latitude)

    rad_epi_lat = toRadians(epicenter[0])
    rad_user_lat = toRadians(epicenter[1])

    a = sin_d_lat ** 2 + Math.cos(rad_epi_lat) * Math.cos(rad_user_lat) * (sin_d_long ** 2)
    c = Math.atan2(Math.sqrt(a), Math.sqrt(1-a))
    return EARTH_RADIUS * c
  end


  def toRadians(degrees)
    return degrees * Math::PI / 180
  end

end
