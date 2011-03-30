class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :name, :position
      t.text :bio
      t.date :started_on
      t.datetime :created_at, :updated_at
    end
  end

  def self.down
    drop_table :people
  end
end
