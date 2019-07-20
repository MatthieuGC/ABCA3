class Mutation < ApplicationRecord
  belongs_to :protein

  validates :protein_id, presence: true
  validates :proteic_name, :nucleotidic_name, uniqueness: true
end
