class CreateSurveys < ActiveRecord::Migration
  def change
  	create_table :surveys do |s|
  		s.belongs_to :user
  		s.string :title, uniqueness: true
  		s.timestamps null: false
  	end
  end
end


