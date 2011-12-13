# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111213045400) do

  create_table "eqpfamilies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "indx"
  end

  create_table "eqpgroups", :force => true do |t|
    t.string   "name"
    t.integer  "pn"
    t.string   "p1"
    t.string   "p2"
    t.string   "p3"
    t.string   "p4"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "eqpfamily_id"
    t.integer  "indx"
    t.string   "description"
  end

  create_table "eqps", :force => true do |t|
    t.string   "name"
    t.string   "v1"
    t.string   "v2"
    t.string   "v3"
    t.string   "v4"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "eqptype_id"
    t.integer  "indx"
  end

  create_table "eqptypes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "eqpgroup_id"
    t.integer  "indx"
    t.string   "img01_file_name"
    t.string   "img01_content_type"
    t.integer  "img01_file_size"
    t.datetime "img01_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
