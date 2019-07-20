class Chromosome < ApplicationRecord
  has_many :genes, dependent: :restrict_with_error

  validates :name, presence: true, uniqueness: true
end
