class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :start_time
end
