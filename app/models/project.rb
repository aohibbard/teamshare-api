class Project < ApplicationRecord
    belongs_to :user
    # would suggest only belongs to one user. fix?
    has_many :objectives
end
