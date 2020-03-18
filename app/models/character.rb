class Character < ActiveRecord::Base
  belongs_to :shows
  belongs_to :actor 
  
  def say_that_thing_you_say
    puts self.catchphrase
  end


end