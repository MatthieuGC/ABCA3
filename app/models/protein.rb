class Protein < ApplicationRecord
  belongs_to :gene
  has_many :mutations

  validates :gene_id, :name, presence: true
  validates :gene_id, uniqueness: { scope: :name }
end
