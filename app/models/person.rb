class Person < ActiveRecord::Base
  def to_param
    self.id.to_s + "-" + self.name.gsub(/[^a-zA-Z]/, "").underscore
  end
end
