class Rider < ApplicationRecord
    validates_presence_of :first_name, :last_name, :city_of_origin, :state_of_origin, :latitude, :longitude
end
