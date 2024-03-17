require 'rails_helper'

RSpec.describe Services::IndexAction do
  describe '#perform' do
    let!(:service) { create(:service) }

    it 'returns all services' do
      expect(described_class.perform).to eq([service])
    end
  end
end
