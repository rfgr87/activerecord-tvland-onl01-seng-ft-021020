class Show < ActiveRecord::Base
  belongs_to :network
  
  def actors_list
    self.actors.collect{|x| x.full_name}
  end
  
end