class CampgroundSerializer < ActiveModel::Serializer
  attributes :id, :name, :location_id, :description, :link, :cost
  belongs_to :location
end
