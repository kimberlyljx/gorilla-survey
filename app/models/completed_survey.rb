class CompletedSurvey < ActiveRecord::Base
	belongs_to :user
	belongs_to :survey
	has_many :responses
  # Remember to create a migration!
end
