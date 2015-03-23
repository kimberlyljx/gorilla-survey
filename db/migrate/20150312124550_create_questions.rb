class CreateQuestions < ActiveRecord::Migration
  def change
  	create_table :questions do |q|
  		q.belongs_to :survey
  		q.string :body, null: false
  	end
  end
end
