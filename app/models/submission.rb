class Submission < ApplicationRecord
    validates_presence_of :first_name, :last_name, :email, :slogan
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
    validates_length_of :slogan, maximum: 50 
end
