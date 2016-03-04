class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.attachment :photo
      t.string :description
      t.belongs_to :album
      t.timestamps null: false
    end
  end
end
