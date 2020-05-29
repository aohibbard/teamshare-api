class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :due_date, :notes, :status
end
