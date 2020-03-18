class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    fullname = [self.first_name,self.last_name].join(" ")
    fullname
  end
  
  def list_roles
    list = [self.full_name, self.characters.shows.name].join(" - ")
    list
  end
end