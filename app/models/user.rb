class User < ActiveRecord::Base
	has_many :surveys
	has_many :completed_surveys
  # Remember to create a migration!

   	def self.authenticate(passed_in_username, passed_in_password)
		@user = User.where(username: passed_in_username).first
		if @user && @user.password == passed_in_password
			@user
		else
			nil
		end
	end
end
