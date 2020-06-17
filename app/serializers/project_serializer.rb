class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :due_date, :notes, :status
  has_many :objectives
  belongs_to :user
end
