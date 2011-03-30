class CreateAreas < ActiveRecord::Migration
  def self.up
    create_table :areas do |t|
      t.string :name
      t.text :body
      t.timestamps 
    end
    
    Area.create(:name => "Information",
                :body => %|about us

catlindesign, inc., established in 1984, is a full service interior design firm consisting of a nine-member team of professionals. The interior design team includes highly trained and experienced designers proficient in all aspects of the interior design process. Located in the historic section of Jacksonville's San Marco, the firm offers services in both commercial and residential interiors with specialization in Corporate Interiors, Hospitality and Health Care design.

Juliana M. Catlin, FASID, is the President of the firm and has been responsible for many noteworthy and award-winning projects throughout the Southeast; including Epping Forest Yacht Club,|)
  end

  def self.down
    drop_table :areas
  end
end
