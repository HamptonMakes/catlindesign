class Picture < ActiveRecord::Base
  belongs_to :album
  
  has_attached_file :photo, styles: {thumb: "150x150#", large: "500x500#"}
  validates_attachment :photo, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"]}
  
end
