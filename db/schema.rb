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

ActiveRecord::Schema.define(version: 2018_05_11_162817) do

  create_table "alembic_version", primary_key: "version_num", id: :string, limit: 32, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
  end

  create_table "blog", id: :integer, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title", null: false
    t.string "subtitle", null: false
    t.text "intro", null: false
    t.text "content", null: false
    t.string "logo", null: false
    t.datetime "update_time", null: false
    t.datetime "create_time", null: false
    t.integer "user_id", null: false, unsigned: true
    t.index ["create_time"], name: "ix_blog_create_time"
    t.index ["title"], name: "ix_blog_title"
    t.index ["update_time"], name: "ix_blog_update_time"
    t.index ["user_id"], name: "user_id"
  end

  create_table "user", id: :integer, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", limit: 128, null: false
    t.string "nickname", limit: 128, null: false
    t.string "password", null: false
    t.integer "gender", limit: 1, null: false
    t.integer "state", limit: 1, null: false
    t.integer "active", limit: 1, null: false
    t.integer "manager", limit: 1, null: false
    t.datetime "create_time", null: false
    t.index ["email"], name: "email", unique: true
  end

  create_table "user_info", id: :integer, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "sign", null: false
    t.text "intro", null: false
    t.string "address", null: false
    t.datetime "birthday", null: false
    t.string "avatar", null: false
    t.integer "state", limit: 1, null: false
    t.integer "user_id", null: false, unsigned: true
    t.index ["user_id"], name: "user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "blog", "user", name: "blog_ibfk_1"
  add_foreign_key "user_info", "user", name: "user_info_ibfk_1"
end
