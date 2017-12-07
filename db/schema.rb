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

ActiveRecord::Schema.define(version: 20170614073124) do

  create_table "photos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.date     "captured_date"
    t.string   "visibility"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["user_id", "visibility"], name: "index_photos_on_user_id_and_visibility", using: :btree
    t.index ["user_id"], name: "index_photos_on_user_id", using: :btree
  end

  create_table "stories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.string   "caption"
    t.integer  "likes_count"
    t.integer  "comments_count"
    t.string   "face1_video_thumb_file_name"
    t.string   "face1_video_thumb_content_type"
    t.integer  "face1_video_thumb_file_size"
    t.datetime "face1_video_thumb_updated_at"
    t.string   "face2_video_thumb_file_name"
    t.string   "face2_video_thumb_content_type"
    t.integer  "face2_video_thumb_file_size"
    t.datetime "face2_video_thumb_updated_at"
    t.string   "face3_video_thumb_file_name"
    t.string   "face3_video_thumb_content_type"
    t.integer  "face3_video_thumb_file_size"
    t.datetime "face3_video_thumb_updated_at"
    t.string   "face4_video_thumb_file_name"
    t.string   "face4_video_thumb_content_type"
    t.integer  "face4_video_thumb_file_size"
    t.datetime "face4_video_thumb_updated_at"
    t.string   "face1_media_file_name"
    t.string   "face1_media_content_type"
    t.integer  "face1_media_file_size"
    t.datetime "face1_media_updated_at"
    t.string   "face2_media_file_name"
    t.string   "face2_media_content_type"
    t.integer  "face2_media_file_size"
    t.datetime "face2_media_updated_at"
    t.string   "face3_media_file_name"
    t.string   "face3_media_content_type"
    t.integer  "face3_media_file_size"
    t.datetime "face3_media_updated_at"
    t.string   "face4_media_file_name"
    t.string   "face4_media_content_type"
    t.integer  "face4_media_file_size"
    t.datetime "face4_media_updated_at"
    t.boolean  "active",                         default: true
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.index ["user_id"], name: "index_stories_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email"
    t.string   "username"
    t.string   "password_digest"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "avatar_face1_file_name"
    t.string   "avatar_face1_content_type"
    t.integer  "avatar_face1_file_size"
    t.datetime "avatar_face1_updated_at"
    t.string   "avatar_face2_file_name"
    t.string   "avatar_face2_content_type"
    t.integer  "avatar_face2_file_size"
    t.datetime "avatar_face2_updated_at"
    t.string   "avatar_face3_file_name"
    t.string   "avatar_face3_content_type"
    t.integer  "avatar_face3_file_size"
    t.datetime "avatar_face3_updated_at"
    t.string   "avatar_face4_file_name"
    t.string   "avatar_face4_content_type"
    t.integer  "avatar_face4_file_size"
    t.datetime "avatar_face4_updated_at"
    t.string   "avatar_face5_file_name"
    t.string   "avatar_face5_content_type"
    t.integer  "avatar_face5_file_size"
    t.datetime "avatar_face5_updated_at"
    t.string   "avatar_face6_file_name"
    t.string   "avatar_face6_content_type"
    t.integer  "avatar_face6_file_size"
    t.datetime "avatar_face6_updated_at"
    t.string   "fb_token"
    t.string   "website"
    t.string   "bio"
    t.string   "gender"
    t.string   "remember_token"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "post_count",                              default: 0
    t.integer  "following_count",                         default: 0
    t.integer  "follower_count",                          default: 0
    t.integer  "family_count",                            default: 0
    t.text     "info",                      limit: 65535
    t.string   "contact_me"
    t.boolean  "online",                                  default: false
    t.boolean  "is_verified",                             default: false
    t.boolean  "is_active",                               default: true
    t.string   "role"
    t.datetime "created_at",                                              null: false
    t.datetime "updated_at",                                              null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

  add_foreign_key "photos", "users"
  add_foreign_key "stories", "users"
end
