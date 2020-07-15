class User < ApplicationRecord
    has_many :projects
    # maybe should be has and belongs to many
    has_many :objectives, :through => :projects

    has_secure_password

    # validations
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true

    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

    def full_name
        self.first_name + ' ' + self.last_name
    end 
    
end
