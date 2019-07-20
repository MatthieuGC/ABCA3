class CreateGenes < ActiveRecord::Migration[5.2]
  def change
    create_table :genes do |t|
      t.belongs_to :chromosome, null: false, index: true, foreign_key: true

      t.string  :name, null: false, unique: true
      t.string  :location 
      t.integer :exon_count
      t.integer :size

      t.timestamps
    end
  end
end
