class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :name, :comment, :campground_id, :created_at
end
