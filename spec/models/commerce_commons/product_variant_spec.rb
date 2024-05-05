require 'rails_helper'

module CommerceCommons
  RSpec.describe ProductVariant, type: :model do
    it { is_expected.to belong_to(:product) }

    it { is_expected.to validate_numericality_of(:price).is_greater_than_or_equal_to(0) }
  end
end
