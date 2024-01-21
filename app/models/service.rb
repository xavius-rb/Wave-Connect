class Service < ApplicationRecord
  validates :name, presence: true

  # Generate a random token.
  before_create do
    self.uuid = SecureRandom.uuid
  end
end
