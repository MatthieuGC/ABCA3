class CreateProteins < ActiveRecord::Migration[5.2]
  def change
    create_table :proteins do |t|
      t.belongs_to :gene, null: false, index: true, foreign_key: true

      t.string  :name, null: false
      t.string  :legacy_names, array: true
      t.string  :classifications, array: true
      t.integer :molecular_weight
      t.string  :location
      t.string  :fonction

      t.timestamps
    end

    add_index :proteins, %i[gene_id name], unique: true
  end
end
