class Show < ActiveRecord::Base
  
  def actors_list
    self.actors.collect{|x| x.full_name}
  end
  
end