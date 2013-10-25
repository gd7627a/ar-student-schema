require_relative '../../db/config'

class Teacher < ActiveRecord::Base
# implement your teacher model here
  
  def name
    self.first_name + " " + self.last_name
  end

  def email 
    self.email
  end
  
  def 
    self.phone
  end 
end



