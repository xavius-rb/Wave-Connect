require 'rails_helper'

RSpec.describe Service, type: :model do
  describe 'callbacks' do
    describe 'before_create' do
      describe '#generate_uuid' do
        it 'generates a uuid' do
          service = build(:service)
          expect(service.uuid).to be_nil
          service.save!
          expect(service.uuid).not_to be_nil
        end
      end
    end
  end
end
