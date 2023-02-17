class PostSerializer < ActiveModel::Serializer
  attributes :id,:title,:description,:category_id,:dislike_counts

  # belongs_to :user
  # belongs_to :category

  def dislike_counts
    object.likes.where(active: false).count
  end
end
