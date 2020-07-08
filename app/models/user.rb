class User < ApplicationRecord
    has_secure_password

    has_and_belongs_to_many :projects
    has_many :objectives, :through => :projects

    def name
        self.first_name + self.last_name
    end 
    
end
