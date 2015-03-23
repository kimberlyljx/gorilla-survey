class Survey < ActiveRecord::Base
	belongs_to :user
	has_one :photo
	has_many :questions
	has_many :completed_surveys
  # Remember to create a migration!
end
