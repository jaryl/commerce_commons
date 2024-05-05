module CommerceCommons
  class Product < ApplicationRecord
    has_many :product_variants

    validates :title, presence: true
  end
end
