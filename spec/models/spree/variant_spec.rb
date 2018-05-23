RSpec.describe Spree::Variant, type: :model do
  let(:variant) { create(:variant) }

  describe '.cache_key' do
    it 'returns product updated_at attribute' do
      expect(variant.cache_key).to eq(variant.product.updated_at)
    end
  end

  describe '.variant' do
    it 'returns self' do
      expect(variant.variant).to eq(variant)
    end
  end
end