class CreateCompletedSurveys < ActiveRecord::Migration
  def change
  	create_table :completed_surveys do |c|
  		c.belongs_to :user
  		c.belongs_to :survey
  		c.timestamps null: false 
  	end
  end
end
