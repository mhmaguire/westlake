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

ActiveRecord::Schema.define(:version => 20130904061025) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "announcements", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "pixel_height",       :default => 300
  end

  create_table "career_contacts", :force => true do |t|
    t.integer  "career_id"
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "resume_file_name"
    t.string   "resume_content_type"
    t.integer  "resume_file_size"
    t.datetime "resume_updated_at"
  end

  add_index "career_contacts", ["career_id"], :name => "index_career_contacts_on_career_id"

  create_table "careers", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "content_id"
  end

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.integer  "content_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contents", :force => true do |t|
    t.integer  "singleton_guard",           :default => 0
    t.text     "ceo_letter"
    t.text     "gen_info"
    t.text     "company_culture"
    t.text     "la_life"
    t.text     "benefits"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.string   "ceo_img_file_name"
    t.string   "ceo_img_content_type"
    t.integer  "ceo_img_file_size"
    t.datetime "ceo_img_updated_at"
    t.string   "culture_img_file_name"
    t.string   "culture_img_content_type"
    t.integer  "culture_img_file_size"
    t.datetime "culture_img_updated_at"
    t.string   "la_life_img_file_name"
    t.string   "la_life_img_content_type"
    t.integer  "la_life_img_file_size"
    t.datetime "la_life_img_updated_at"
    t.string   "benefits_img_file_name"
    t.string   "benefits_img_content_type"
    t.integer  "benefits_img_file_size"
    t.datetime "benefits_img_updated_at"
    t.string   "openings_img_file_name"
    t.string   "openings_img_content_type"
    t.integer  "openings_img_file_size"
    t.datetime "openings_img_updated_at"
    t.string   "feat_img_file_name"
    t.string   "feat_img_content_type"
    t.integer  "feat_img_file_size"
    t.datetime "feat_img_updated_at"
    t.string   "feat_img2_file_name"
    t.string   "feat_img2_content_type"
    t.integer  "feat_img2_file_size"
    t.datetime "feat_img2_updated_at"
  end

  add_index "contents", ["singleton_guard"], :name => "index_contents_on_singleton_guard", :unique => true

  create_table "email_contacts", :force => true do |t|
    t.string   "email"
    t.string   "name"
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "email_contacts", ["created_at"], :name => "index_email_contacts_on_created_at"

  create_table "employees", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "content_id"
    t.string   "cell_phone"
    t.text     "body"
  end

  create_table "event_contacts", :force => true do |t|
    t.integer  "event_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.text     "source"
  end

  add_index "event_contacts", ["event_id"], :name => "index_event_contacts_on_event_id"

  create_table "events", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.date     "start_date"
    t.integer  "content_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.boolean  "weekly"
  end

  add_index "events", ["content_id"], :name => "index_events_on_content_id"

  create_table "gallery_images", :force => true do |t|
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "content_id"
    t.string   "gallery_type"
    t.string   "caption"
  end

  create_table "home_page_slides", :force => true do |t|
    t.string   "header"
    t.text     "body"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "content_id"
  end

  create_table "rich_rich_files", :force => true do |t|
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.string   "rich_file_file_name"
    t.string   "rich_file_content_type"
    t.integer  "rich_file_file_size"
    t.datetime "rich_file_updated_at"
    t.string   "owner_type"
    t.integer  "owner_id"
    t.text     "uri_cache"
    t.string   "simplified_type",        :default => "file"
  end

  create_table "vendors", :force => true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "href"
  end

  add_index "vendors", ["category_id"], :name => "index_vendors_on_category_id"

end
