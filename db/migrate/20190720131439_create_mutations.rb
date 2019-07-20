class CreateMutations < ActiveRecord::Migration[5.2]
  def change
    create_table :mutations do |t|
      t.belongs_to :protein, null: false, index: true, foreign_key: true

      t.string  :proteic_name, unique: true
      t.string  :nucleotidic_name, unique: true
      t.string  :classification
      t.string  :location
      t.integer :frequency_operator
      t.float   :frequency

      t.timestamps
    end
  end
end
