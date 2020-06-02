class User < ApplicationRecord
    has_and_belongs_to_many :projects
    has_many :objectives

    def name
        self.first_name + self.last_name
    end 
    
end