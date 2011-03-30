class Area < ActiveRecord::Base
  has_many :pages
  
  validates_uniqueness_of :name

  def self.[](name)
    self.find_by_name(name)
  end
  
  def to_param
    "#{self.id}-#{name.underscore}"
  end
end
