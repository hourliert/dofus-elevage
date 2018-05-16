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

ActiveRecord::Schema.define(version: 2018_05_14_203909) do

  create_table "families", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "generations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "family_id"
    t.integer "level", default: 1, null: false
    t.index ["family_id"], name: "index_generations_on_family_id"
  end

  create_table "mounts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "sexe", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "generation_id"
    t.index ["generation_id"], name: "index_mounts_on_generation_id"
  end

  create_table "relations", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "type"
    t.bigint "first_mount_id"
    t.bigint "second_mount_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["first_mount_id"], name: "fk_rails_8c7c6be751"
    t.index ["second_mount_id"], name: "fk_rails_90fec573f8"
    t.index ["type", "first_mount_id", "second_mount_id"], name: "index_relations_on_type_and_first_mount_id_and_second_mount_id", unique: true
    t.index ["type", "first_mount_id"], name: "index_relations_on_type_and_first_mount_id"
    t.index ["type", "second_mount_id"], name: "index_relations_on_type_and_second_mount_id"
  end

  add_foreign_key "generations", "families"
  add_foreign_key "mounts", "generations"
  add_foreign_key "relations", "mounts", column: "first_mount_id"
  add_foreign_key "relations", "mounts", column: "second_mount_id"
end
