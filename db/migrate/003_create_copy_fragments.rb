class CreateCopyFragments < ActiveRecord::Migration
  def self.up
    create_table :copy_fragments do |t|
      t.string :name
      t.text :body
      t.timestamps
    end
  end

  def self.down
    drop_table :copy_fragments
  end
end
