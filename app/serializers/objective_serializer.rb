class ObjectiveSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :status, :notes
  belongs_to :project
end
