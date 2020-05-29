class ObjectiveSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :status, :notes
  belongs_to :user, :project
end
