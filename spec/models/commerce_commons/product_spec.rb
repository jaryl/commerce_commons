require 'rails_helper'

module CommerceCommons
  RSpec.describe Product, type: :model do
    it { is_expected.to validate_presence_of(:title) }
  end
end
