require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here
  validates :email,  :format => { :with => /.+@.+\..{2,}/, :message => "Not an valid email"}, :uniqueness => true
  validates :age, :numericality => { :greater_than_or_equal_to =>  5   }
  validates :phone, :format => { :with => /\d{10,}/, :message => "Not a valid number!"}
  def name
    self.first_name + " " + self.last_name
  end

  def age
    i = Time.now 
    i.year - self.birthday.year 
  end
end
