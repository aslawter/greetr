class Greeting < ActiveRecord::Base
  belongs_to :sender, class_name: "User" 
end
