class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :name, :comment, :campground_id
end
