class CreatePhotos < ActiveRecord::Migration
  def change
  	create_table :photos do |p|
  		p.belongs_to :survey
  		p.string :file
  		p.string :caption
	  end
  end
end
