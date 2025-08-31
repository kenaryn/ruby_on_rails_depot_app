class Product < ApplicationRecord
  has_one_attached :image

  # Broadcast any change to the product model to any clients that are listening
  after_commit -> { broadcast_refresh_later_to "products" }
end
