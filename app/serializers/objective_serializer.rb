class ObjectiveSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :status, :notes
end
