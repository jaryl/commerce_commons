module CommerceCommons
  class ProductVariant < ApplicationRecord
    belongs_to :product

     validates :price, numericality: { greater_than_or_equal_to: 0 }
  end
end
