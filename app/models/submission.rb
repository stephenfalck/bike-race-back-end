class Submission < ApplicationRecord
    validates_presence_of :first_name, :last_name, :email, :slogan

end
