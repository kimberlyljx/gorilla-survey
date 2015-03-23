class CreateResponses < ActiveRecord::Migration
  def change
  	create_table :responses do |r|
  		r.belongs_to :completed_survey
  		r.belongs_to :question
  		r.belongs_to :choice
  	end
  end
end
