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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20200428024335) do

  create_table "activities", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "customize_order"
    t.integer  "categoryable_id"
    t.string   "categoryable_type"
    t.datetime "start_time"
    t.string   "location"
    t.string   "picture"
    t.integer  "manager_id"
    t.decimal  "price",             precision: 10, scale: 0
    t.string   "description"
    t.boolean  "hotspot",                                    default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activities", ["categoryable_id", "categoryable_type"], name: "index_activities_on_categoryable_id_and_categoryable_type"

  create_table "activity_records", force: true do |t|
    t.integer  "user_id"
    t.integer  "activity_id"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "books", force: true do |t|
    t.string   "name"
    t.string   "brief"
    t.integer  "manager_id"
    t.integer  "categoryable_id"
    t.string   "categoryable_type"
    t.text     "detail"
    t.boolean  "online",                                     default: true
    t.integer  "customeize_order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "price",             precision: 10, scale: 2, default: 0.0
    t.integer  "stock",                                      default: 0
  end

  add_index "books", ["categoryable_id", "categoryable_type"], name: "index_books_on_categoryable_id_and_categoryable_type"

  create_table "donates", force: true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "manager_id"
    t.integer  "categoryable_id"
    t.string   "categoryable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "donates", ["categoryable_id", "categoryable_type"], name: "index_donates_on_categoryable_id_and_categoryable_type"

  create_table "item_categories", force: true do |t|
    t.string   "name"
    t.string   "cite_key"
    t.integer  "parent_id"
    t.integer  "manager_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kindeditor_assets", force: true do |t|
    t.string   "asset"
    t.integer  "file_size"
    t.string   "file_type"
    t.integer  "owner_id"
    t.string   "owner_type"
    t.string   "asset_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "managers", force: true do |t|
    t.string   "name",            limit: 50
    t.string   "email",           limit: 100
    t.string   "password_digest", limit: 100
    t.boolean  "supper",                      default: false
    t.boolean  "disabled",                    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nodes", force: true do |t|
    t.string   "title"
    t.integer  "manager_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.boolean  "recommendation",                          default: false
    t.boolean  "is_over",                                 default: false
    t.integer  "user_id"
    t.integer  "manager_id"
    t.decimal  "price",          precision: 10, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "code"
    t.decimal  "total_price",       precision: 10, scale: 2
    t.datetime "pick_up_at"
    t.string   "pick_up_token"
    t.datetime "pick_up_ed"
    t.integer  "user_id"
    t.integer  "manager_id"
    t.integer  "status"
    t.integer  "categoryable_id"
    t.string   "categoryable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["categoryable_id", "categoryable_type"], name: "index_orders_on_categoryable_id_and_categoryable_type"

  create_table "pictures", force: true do |t|
    t.integer  "position"
    t.string   "url"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pictures", ["imageable_id", "imageable_type"], name: "index_pictures_on_imageable_id_and_imageable_type"

  create_table "points_records", force: true do |t|
    t.integer  "user_id"
    t.decimal  "points",     precision: 10, scale: 2
    t.decimal  "balance",    precision: 10, scale: 2
    t.string   "title"
    t.string   "brief"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.integer  "manager_id"
    t.integer  "categoryable_id"
    t.string   "categoryable_type"
    t.decimal  "price",             precision: 10, scale: 2
    t.decimal  "discount",          precision: 10, scale: 2
    t.text     "detail"
    t.boolean  "online",                                     default: true
    t.integer  "customize_order"
    t.boolean  "recommendation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stock",                                      default: 0
  end

  add_index "products", ["categoryable_id", "categoryable_type"], name: "index_products_on_categoryable_id_and_categoryable_type"

  create_table "replies", force: true do |t|
    t.integer  "topic_id"
    t.integer  "user_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "replies", ["topic_id"], name: "index_replies_on_topic_id"

  create_table "topics", force: true do |t|
    t.integer  "node_id"
    t.integer  "user_id"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "topics", ["node_id"], name: "index_topics_on_node_id"

  create_table "users", force: true do |t|
    t.string   "phone"
    t.string   "name"
    t.string   "province"
    t.string   "city"
    t.string   "district"
    t.integer  "manager_id"
    t.string   "parent_phone"
    t.string   "openid"
    t.date     "birthday"
    t.decimal  "balance",      precision: 10, scale: 2, default: 0.0
    t.string   "levels",                                default: "tourist"
    t.date     "expired_at"
    t.string   "avatar"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "number"
  end

  add_index "users", ["manager_id"], name: "index_users_on_manager_id"
  add_index "users", ["name"], name: "index_users_on_name"
  add_index "users", ["openid"], name: "index_users_on_openid"
  add_index "users", ["parent_phone"], name: "index_users_on_parent_phone"
  add_index "users", ["phone"], name: "index_users_on_phone"
  add_index "users", ["province"], name: "index_users_on_province"

  create_table "vips", force: true do |t|
    t.string   "name"
    t.integer  "levels"
    t.decimal  "price",      precision: 10, scale: 2
    t.integer  "parent_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vips", ["parent_id"], name: "index_vips_on_parent_id"

  create_table "wizcms_article_article_categories", force: true do |t|
    t.string   "name",         limit: 50
    t.integer  "custom_order"
    t.integer  "parent_id"
    t.string   "brief",        limit: 200
    t.boolean  "published"
    t.string   "cite_key",     limit: 50
    t.integer  "manager_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wizcms_article_articles", force: true do |t|
    t.string   "title",               limit: 100
    t.string   "author",              limit: 50
    t.boolean  "published"
    t.string   "brief",               limit: 200
    t.text     "content"
    t.integer  "article_category_id"
    t.string   "picture"
    t.integer  "customeize_order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cite_key",            limit: 50
    t.string   "copy_from",           limit: 150
    t.datetime "published_at"
    t.boolean  "hotspot"
  end

  create_table "wizcms_article_pages", force: true do |t|
    t.string   "title",      limit: 100
    t.text     "content"
    t.boolean  "published"
    t.string   "cite_key",   limit: 50
    t.string   "keywords"
    t.string   "brief",      limit: 200
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wizcms_link_categories", force: true do |t|
    t.string   "name",         limit: 50
    t.integer  "custom_order"
    t.integer  "parent_id"
    t.string   "brief",        limit: 200
    t.boolean  "published"
    t.string   "cite_key",     limit: 50
    t.integer  "manager_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wizcms_link_links", force: true do |t|
    t.string   "title",        limit: 200
    t.string   "url"
    t.string   "image",        limit: 200
    t.boolean  "published"
    t.integer  "category_id"
    t.string   "cite_key",     limit: 50
    t.integer  "custom_order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
