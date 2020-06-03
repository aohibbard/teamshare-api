class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :due_date, :notes, :status
  belongs_to :user
end
