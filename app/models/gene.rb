class Gene < ApplicationRecord
  belongs_to :chromosome
  has_many :proteins

  validates :chromosome_id, :name, presence: true
  validates :name, uniqueness: true
end
