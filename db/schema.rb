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

ActiveRecord::Schema.define(version: 20200516075747) do

  create_table "activities", force: :cascade do |t|
    t.string   "title",             limit: 255
    t.text     "content",           limit: 65535
    t.integer  "customize_order",   limit: 4
    t.integer  "categoryable_id",   limit: 4
    t.string   "categoryable_type", limit: 255
    t.datetime "start_time"
    t.string   "location",          limit: 255
    t.string   "picture",           limit: 255
    t.integer  "manager_id",        limit: 4
    t.decimal  "price",                           precision: 10, scale: 2
    t.string   "description",       limit: 255
    t.boolean  "hotspot",                                                  default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activities", ["categoryable_type", "categoryable_id"], name: "index_activities_on_categoryable_type_and_categoryable_id", using: :btree

  create_table "activity_records", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.integer  "activity_id", limit: 4
    t.integer  "status",      limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "books", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.string   "brief",             limit: 255
    t.integer  "manager_id",        limit: 4
    t.integer  "categoryable_id",   limit: 4
    t.string   "categoryable_type", limit: 255
    t.text     "detail",            limit: 65535
    t.boolean  "online",                                                   default: true
    t.integer  "customeize_order",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "price",                           precision: 10, scale: 2, default: 0.0
    t.integer  "stock",             limit: 4,                              default: 0
  end

  add_index "books", ["categoryable_type", "categoryable_id"], name: "index_books_on_categoryable_type_and_categoryable_id", using: :btree

  create_table "donates", force: :cascade do |t|
    t.text     "content",           limit: 65535
    t.integer  "user_id",           limit: 4
    t.integer  "manager_id",        limit: 4
    t.integer  "categoryable_id",   limit: 4
    t.string   "categoryable_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "donates", ["categoryable_type", "categoryable_id"], name: "index_donates_on_categoryable_type_and_categoryable_id", using: :btree

  create_table "item_categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "cite_key",   limit: 255
    t.integer  "parent_id",  limit: 4
    t.integer  "manager_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kindeditor_assets", force: :cascade do |t|
    t.string   "asset",      limit: 255
    t.integer  "file_size",  limit: 4
    t.string   "file_type",  limit: 255
    t.integer  "owner_id",   limit: 4
    t.string   "owner_type", limit: 255
    t.string   "asset_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "managers", force: :cascade do |t|
    t.string   "name",            limit: 50
    t.string   "email",           limit: 100
    t.string   "password_digest", limit: 100
    t.boolean  "supper",                      default: false
    t.boolean  "disabled",                    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nodes", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.integer  "manager_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", force: :cascade do |t|
    t.string   "title",          limit: 255
    t.text     "content",        limit: 65535
    t.boolean  "recommendation",                                        default: false
    t.boolean  "is_over",                                               default: false
    t.integer  "user_id",        limit: 4
    t.integer  "manager_id",     limit: 4
    t.decimal  "price",                        precision: 10, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: :cascade do |t|
    t.string   "code",              limit: 255
    t.decimal  "total_price",                   precision: 10, scale: 2
    t.datetime "pick_up_at"
    t.string   "pick_up_token",     limit: 255
    t.datetime "pick_up_ed"
    t.integer  "user_id",           limit: 4
    t.integer  "manager_id",        limit: 4
    t.integer  "status",            limit: 4
    t.integer  "categoryable_id",   limit: 4
    t.string   "categoryable_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["categoryable_type", "categoryable_id"], name: "index_orders_on_categoryable_type_and_categoryable_id", using: :btree

  create_table "pictures", force: :cascade do |t|
    t.integer  "position",       limit: 4
    t.string   "url",            limit: 255
    t.integer  "imageable_id",   limit: 4
    t.string   "imageable_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pictures", ["imageable_type", "imageable_id"], name: "index_pictures_on_imageable_type_and_imageable_id", using: :btree

  create_table "points_records", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.decimal  "points",                 precision: 10, scale: 2
    t.decimal  "balance",                precision: 10, scale: 2
    t.string   "title",      limit: 255
    t.string   "brief",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "points_records", ["title"], name: "index_points_records_on_title", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.integer  "manager_id",        limit: 4
    t.integer  "categoryable_id",   limit: 4
    t.string   "categoryable_type", limit: 255
    t.decimal  "price",                           precision: 10, scale: 2
    t.decimal  "discount",                        precision: 10, scale: 2
    t.text     "detail",            limit: 65535
    t.boolean  "online",                                                   default: true
    t.integer  "customize_order",   limit: 4
    t.boolean  "recommendation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stock",             limit: 4,                              default: 0
  end

  add_index "products", ["categoryable_type", "categoryable_id"], name: "index_products_on_categoryable_type_and_categoryable_id", using: :btree

  create_table "refinery_authentication_devise_roles", force: :cascade do |t|
    t.string "title", limit: 255
  end

  create_table "refinery_authentication_devise_roles_users", id: false, force: :cascade do |t|
    t.integer "user_id", limit: 4
    t.integer "role_id", limit: 4
  end

  add_index "refinery_authentication_devise_roles_users", ["role_id", "user_id"], name: "refinery_roles_users_role_id_user_id", using: :btree
  add_index "refinery_authentication_devise_roles_users", ["user_id", "role_id"], name: "refinery_roles_users_user_id_role_id", using: :btree

  create_table "refinery_authentication_devise_user_plugins", force: :cascade do |t|
    t.integer "user_id",  limit: 4
    t.string  "name",     limit: 255
    t.integer "position", limit: 4
  end

  add_index "refinery_authentication_devise_user_plugins", ["name"], name: "index_refinery_authentication_devise_user_plugins_on_name", using: :btree
  add_index "refinery_authentication_devise_user_plugins", ["user_id", "name"], name: "refinery_user_plugins_user_id_name", unique: true, using: :btree

  create_table "refinery_authentication_devise_users", force: :cascade do |t|
    t.string   "username",               limit: 255, null: false
    t.string   "email",                  limit: 255, null: false
    t.string   "encrypted_password",     limit: 255, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.integer  "sign_in_count",          limit: 4
    t.datetime "remember_created_at"
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug",                   limit: 255
    t.string   "full_name",              limit: 255
  end

  add_index "refinery_authentication_devise_users", ["id"], name: "index_refinery_authentication_devise_users_on_id", using: :btree
  add_index "refinery_authentication_devise_users", ["slug"], name: "index_refinery_authentication_devise_users_on_slug", using: :btree

  create_table "refinery_image_translations", force: :cascade do |t|
    t.integer  "refinery_image_id", limit: 4,   null: false
    t.string   "locale",            limit: 255, null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "image_alt",         limit: 255
    t.string   "image_title",       limit: 255
  end

  add_index "refinery_image_translations", ["locale"], name: "index_refinery_image_translations_on_locale", using: :btree
  add_index "refinery_image_translations", ["refinery_image_id"], name: "index_refinery_image_translations_on_refinery_image_id", using: :btree

  create_table "refinery_images", force: :cascade do |t|
    t.string   "image_mime_type", limit: 255
    t.string   "image_name",      limit: 255
    t.integer  "image_size",      limit: 4
    t.integer  "image_width",     limit: 4
    t.integer  "image_height",    limit: 4
    t.string   "image_uid",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_title",     limit: 255
    t.string   "image_alt",       limit: 255
  end

  create_table "refinery_page_part_translations", force: :cascade do |t|
    t.integer  "refinery_page_part_id", limit: 4,     null: false
    t.string   "locale",                limit: 255,   null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.text     "body",                  limit: 65535
  end

  add_index "refinery_page_part_translations", ["locale"], name: "index_refinery_page_part_translations_on_locale", using: :btree
  add_index "refinery_page_part_translations", ["refinery_page_part_id"], name: "index_refinery_page_part_translations_on_refinery_page_part_id", using: :btree

  create_table "refinery_page_parts", force: :cascade do |t|
    t.integer  "refinery_page_id", limit: 4
    t.string   "slug",             limit: 255
    t.text     "body",             limit: 65535
    t.integer  "position",         limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title",            limit: 255
  end

  add_index "refinery_page_parts", ["id"], name: "index_refinery_page_parts_on_id", using: :btree
  add_index "refinery_page_parts", ["refinery_page_id"], name: "index_refinery_page_parts_on_refinery_page_id", using: :btree

  create_table "refinery_page_translations", force: :cascade do |t|
    t.integer  "refinery_page_id", limit: 4,   null: false
    t.string   "locale",           limit: 255, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "title",            limit: 255
    t.string   "custom_slug",      limit: 255
    t.string   "menu_title",       limit: 255
    t.string   "slug",             limit: 255
  end

  add_index "refinery_page_translations", ["locale"], name: "index_refinery_page_translations_on_locale", using: :btree
  add_index "refinery_page_translations", ["refinery_page_id"], name: "index_refinery_page_translations_on_refinery_page_id", using: :btree

  create_table "refinery_pages", force: :cascade do |t|
    t.integer  "parent_id",           limit: 4
    t.string   "path",                limit: 255
    t.string   "slug",                limit: 255
    t.string   "custom_slug",         limit: 255
    t.boolean  "show_in_menu",                    default: true
    t.string   "link_url",            limit: 255
    t.string   "menu_match",          limit: 255
    t.boolean  "deletable",                       default: true
    t.boolean  "draft",                           default: false
    t.boolean  "skip_to_first_child",             default: false
    t.integer  "lft",                 limit: 4
    t.integer  "rgt",                 limit: 4
    t.integer  "depth",               limit: 4
    t.string   "view_template",       limit: 255
    t.string   "layout_template",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "refinery_pages", ["depth"], name: "index_refinery_pages_on_depth", using: :btree
  add_index "refinery_pages", ["id"], name: "index_refinery_pages_on_id", using: :btree
  add_index "refinery_pages", ["lft"], name: "index_refinery_pages_on_lft", using: :btree
  add_index "refinery_pages", ["parent_id"], name: "index_refinery_pages_on_parent_id", using: :btree
  add_index "refinery_pages", ["rgt"], name: "index_refinery_pages_on_rgt", using: :btree

  create_table "refinery_resource_translations", force: :cascade do |t|
    t.integer  "refinery_resource_id", limit: 4,   null: false
    t.string   "locale",               limit: 255, null: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "resource_title",       limit: 255
  end

  add_index "refinery_resource_translations", ["locale"], name: "index_refinery_resource_translations_on_locale", using: :btree
  add_index "refinery_resource_translations", ["refinery_resource_id"], name: "index_refinery_resource_translations_on_refinery_resource_id", using: :btree

  create_table "refinery_resources", force: :cascade do |t|
    t.string   "file_mime_type", limit: 255
    t.string   "file_name",      limit: 255
    t.integer  "file_size",      limit: 4
    t.string   "file_uid",       limit: 255
    t.string   "file_ext",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "replies", force: :cascade do |t|
    t.integer  "topic_id",   limit: 4
    t.integer  "user_id",    limit: 4
    t.text     "content",    limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "replies", ["topic_id"], name: "index_replies_on_topic_id", using: :btree

  create_table "seo_meta", force: :cascade do |t|
    t.integer  "seo_meta_id",      limit: 4
    t.string   "seo_meta_type",    limit: 255
    t.string   "browser_title",    limit: 255
    t.text     "meta_description", limit: 65535
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "seo_meta", ["id"], name: "index_seo_meta_on_id", using: :btree
  add_index "seo_meta", ["seo_meta_id", "seo_meta_type"], name: "id_type_index_on_seo_meta", using: :btree

  create_table "topics", force: :cascade do |t|
    t.integer  "node_id",    limit: 4
    t.integer  "user_id",    limit: 4
    t.string   "title",      limit: 255
    t.text     "content",    limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "topics", ["node_id"], name: "index_topics_on_node_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "phone",        limit: 255
    t.string   "name",         limit: 255
    t.string   "province",     limit: 255
    t.string   "city",         limit: 255
    t.string   "district",     limit: 255
    t.integer  "manager_id",   limit: 4
    t.string   "parent_phone", limit: 255
    t.string   "openid",       limit: 255
    t.date     "birthday"
    t.decimal  "balance",                  precision: 10, scale: 2, default: 0.0
    t.string   "levels",       limit: 255,                          default: "tourist"
    t.date     "expired_at"
    t.string   "avatar",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "number",       limit: 255
  end

  add_index "users", ["manager_id"], name: "index_users_on_manager_id", using: :btree
  add_index "users", ["name"], name: "index_users_on_name", using: :btree
  add_index "users", ["openid"], name: "index_users_on_openid", using: :btree
  add_index "users", ["parent_phone"], name: "index_users_on_parent_phone", using: :btree
  add_index "users", ["phone"], name: "index_users_on_phone", using: :btree
  add_index "users", ["province"], name: "index_users_on_province", using: :btree

  create_table "vips", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "levels",     limit: 4
    t.decimal  "price",                    precision: 10, scale: 2
    t.integer  "parent_id",  limit: 4
    t.text     "content",    limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vips", ["parent_id"], name: "index_vips_on_parent_id", using: :btree

  create_table "wizcms_article_article_categories", force: :cascade do |t|
    t.string   "name",         limit: 50
    t.integer  "custom_order", limit: 4
    t.integer  "parent_id",    limit: 4
    t.string   "brief",        limit: 200
    t.boolean  "published"
    t.string   "cite_key",     limit: 50
    t.integer  "manager_id",   limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wizcms_article_articles", force: :cascade do |t|
    t.string   "title",               limit: 100
    t.string   "author",              limit: 50
    t.boolean  "published"
    t.string   "brief",               limit: 200
    t.text     "content",             limit: 65535
    t.integer  "article_category_id", limit: 4
    t.string   "picture",             limit: 255
    t.integer  "customeize_order",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cite_key",            limit: 50
    t.string   "copy_from",           limit: 150
    t.datetime "published_at"
    t.boolean  "hotspot"
  end

  create_table "wizcms_article_pages", force: :cascade do |t|
    t.string   "title",      limit: 100
    t.text     "content",    limit: 65535
    t.boolean  "published"
    t.string   "cite_key",   limit: 50
    t.string   "keywords",   limit: 255
    t.string   "brief",      limit: 200
    t.integer  "parent_id",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wizcms_link_categories", force: :cascade do |t|
    t.string   "name",         limit: 50
    t.integer  "custom_order", limit: 4
    t.integer  "parent_id",    limit: 4
    t.string   "brief",        limit: 200
    t.boolean  "published"
    t.string   "cite_key",     limit: 50
    t.integer  "manager_id",   limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wizcms_link_links", force: :cascade do |t|
    t.string   "title",        limit: 200
    t.string   "url",          limit: 255
    t.string   "image",        limit: 200
    t.boolean  "published"
    t.integer  "category_id",  limit: 4
    t.string   "cite_key",     limit: 50
    t.integer  "custom_order", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
