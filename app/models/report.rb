class Report < ApplicationRecord
  validates :cases, presence: true
end
