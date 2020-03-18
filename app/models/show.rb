class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  
  def actors_list
    self.characters.actors.collect{|x| x.full_name}
  end
  
end