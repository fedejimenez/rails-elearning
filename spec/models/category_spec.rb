require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'Associations' do
    it 'has many courses' do
      association = described_class.reflect_on_association(:courses)
      expect(association.macro).to eq :has_many
    end
  end
end
