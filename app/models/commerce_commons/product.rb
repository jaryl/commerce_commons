module CommerceCommons
  class Product < ApplicationRecord
    validates :title, presence: true
  end
end
