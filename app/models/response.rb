class Response < ActiveRecord::Base
	belongs_to :completed_survey
	belongs_to :question
	belongs_to :choice
  # Remember to create a migration!
end
