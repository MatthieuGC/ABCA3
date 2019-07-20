# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_20_131439) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chromosomes", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genes", force: :cascade do |t|
    t.bigint "chromosome_id", null: false
    t.string "name", null: false
    t.string "location"
    t.integer "exon_count"
    t.integer "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chromosome_id"], name: "index_genes_on_chromosome_id"
  end

  create_table "mutations", force: :cascade do |t|
    t.bigint "protein_id", null: false
    t.string "proteic_name"
    t.string "nucleotidic_name"
    t.string "classification"
    t.string "location"
    t.integer "frequency_operator"
    t.float "frequency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["protein_id"], name: "index_mutations_on_protein_id"
  end

  create_table "proteins", force: :cascade do |t|
    t.bigint "gene_id", null: false
    t.string "name", null: false
    t.string "legacy_names", array: true
    t.string "classifications", array: true
    t.integer "molecular_weight"
    t.string "location"
    t.string "fonction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gene_id", "name"], name: "index_proteins_on_gene_id_and_name", unique: true
    t.index ["gene_id"], name: "index_proteins_on_gene_id"
  end

  add_foreign_key "genes", "chromosomes"
  add_foreign_key "mutations", "proteins"
  add_foreign_key "proteins", "genes"
end
