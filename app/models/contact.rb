class Contact < ApplicationRecord
  validates :name, presence: true
  validates :number, presence: true
end
