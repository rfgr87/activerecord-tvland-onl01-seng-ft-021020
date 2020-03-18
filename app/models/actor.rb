class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    fullname = [self.first_name,self.last_name].join(" ")
    fullname
  end
  
  def list_roles
    list = [self.characters, self.characters.first.show.name].join(" - ")
    list
  end
end