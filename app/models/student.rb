require_relative '../../db/config'
require 'date'

class Student < ActiveRecord::Base
# implement your Student model here
#attr_accessor :name :first_name :last_name
 validates :uniqueness => true, :format => { :with => /\w+@\w+.[a-z]{3,}.[a-z]{2,}/,
     :message => "Only email allowed" }

     validates :email, :uniqueness
	def name
		"#{first_name} #{last_name}"
	end

	def age

		now = Date.today.year
		age = now - self.birthday.year
	end
end



