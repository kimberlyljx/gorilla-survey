class CreateChoices < ActiveRecord::Migration
  def change
  	create_table :choices do |c|
  		c.belongs_to :question
  		c.string :body, null: false
  	end
  end
end
