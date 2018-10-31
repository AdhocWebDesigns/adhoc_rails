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

ActiveRecord::Schema.define(version: 2018_10_31_133350) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "alignments", force: :cascade do |t|
    t.integer "val"
    t.string "name"
    t.string "descr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "armours", force: :cascade do |t|
    t.integer "profile_id"
    t.string "name"
    t.string "description"
    t.integer "ac"
    t.integer "strength"
    t.integer "stealth"
    t.integer "weight"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_armours_on_profile_id"
  end

  create_table "damage_effects", force: :cascade do |t|
    t.string "name"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "damage_types", force: :cascade do |t|
    t.string "name"
    t.integer "mod"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dnd_classes", force: :cascade do |t|
    t.string "name"
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "factions", force: :cascade do |t|
    t.string "name"
    t.text "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "description"
    t.integer "photo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photo_id"], name: "index_games_on_photo_id"
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "inventories", force: :cascade do |t|
    t.integer "profile_id"
    t.integer "purse_id"
    t.integer "items_id"
    t.integer "weapons_id"
    t.integer "armours_id"
    t.integer "treasure_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["armours_id"], name: "index_inventories_on_armours_id"
    t.index ["items_id"], name: "index_inventories_on_items_id"
    t.index ["profile_id"], name: "index_inventories_on_profile_id"
    t.index ["purse_id"], name: "index_inventories_on_purse_id"
    t.index ["treasure_id"], name: "index_inventories_on_treasure_id"
    t.index ["weapons_id"], name: "index_inventories_on_weapons_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "qty"
    t.string "description"
    t.integer "value_sp"
    t.integer "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "langs", force: :cascade do |t|
    t.string "name"
    t.text "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string "caption"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_photos_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "char_name"
    t.integer "user_id"
    t.integer "faction_id"
    t.integer "spells_id"
    t.integer "attacks_id"
    t.integer "inventory_id"
    t.integer "alignment_id"
    t.integer "race_id"
    t.integer "skills_id"
    t.integer "stats_id"
    t.integer "langs_id"
    t.integer "class_id"
    t.text "background"
    t.integer "dci"
    t.integer "exp"
    t.integer "inspire"
    t.integer "prof_bonus"
    t.integer "ac"
    t.integer "init"
    t.integer "speed"
    t.integer "hp"
    t.integer "temp_hp"
    t.integer "hit_die"
    t.integer "deathsave_s"
    t.integer "deathsave_f"
    t.text "personality"
    t.text "ideals"
    t.text "bonds"
    t.text "flaws"
    t.text "profs"
    t.text "features"
    t.text "traits"
    t.integer "age"
    t.integer "height"
    t.integer "weight"
    t.string "eyes"
    t.string "skin"
    t.string "hair"
    t.text "backstory"
    t.integer "total_ncm"
    t.integer "pass_wisdom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alignment_id"], name: "index_profiles_on_alignment_id"
    t.index ["attacks_id"], name: "index_profiles_on_attacks_id"
    t.index ["class_id"], name: "index_profiles_on_class_id"
    t.index ["faction_id"], name: "index_profiles_on_faction_id"
    t.index ["inventory_id"], name: "index_profiles_on_inventory_id"
    t.index ["langs_id"], name: "index_profiles_on_langs_id"
    t.index ["race_id"], name: "index_profiles_on_race_id"
    t.index ["skills_id"], name: "index_profiles_on_skills_id"
    t.index ["spells_id"], name: "index_profiles_on_spells_id"
    t.index ["stats_id"], name: "index_profiles_on_stats_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "purses", force: :cascade do |t|
    t.integer "profile_id"
    t.integer "cp"
    t.integer "sp"
    t.integer "ep"
    t.integer "gp"
    t.integer "pp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_purses_on_profile_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "saving_throws", force: :cascade do |t|
    t.string "name"
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spell_component_types", force: :cascade do |t|
    t.string "name"
    t.string "symbol"
    t.text "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spell_components", force: :cascade do |t|
    t.integer "spell_component_type_id"
    t.string "name"
    t.text "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spell_component_type_id"], name: "index_spell_components_on_spell_component_type_id"
  end

  create_table "spell_schools", force: :cascade do |t|
    t.string "name"
    t.text "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spells", force: :cascade do |t|
    t.integer "profile_id"
    t.integer "level"
    t.integer "cast_time"
    t.integer "range"
    t.integer "components_id"
    t.integer "duration"
    t.integer "spell_school_id"
    t.string "attack_save"
    t.integer "damage_effect_id"
    t.string "name"
    t.integer "dnd_classes_id"
    t.text "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["components_id"], name: "index_spells_on_components_id"
    t.index ["damage_effect_id"], name: "index_spells_on_damage_effect_id"
    t.index ["dnd_classes_id"], name: "index_spells_on_dnd_classes_id"
    t.index ["profile_id"], name: "index_spells_on_profile_id"
    t.index ["spell_school_id"], name: "index_spells_on_spell_school_id"
  end

  create_table "stats", force: :cascade do |t|
    t.integer "profile_id"
    t.integer "str"
    t.integer "dex"
    t.integer "con"
    t.integer "int"
    t.integer "wis"
    t.integer "cha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_stats_on_profile_id"
  end

  create_table "treasures", force: :cascade do |t|
    t.integer "profile_id"
    t.integer "items_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["items_id"], name: "index_treasures_on_items_id"
    t.index ["profile_id"], name: "index_treasures_on_profile_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weapon_types", force: :cascade do |t|
    t.string "name"
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string "w_type"
    t.string "name"
    t.string "description"
    t.integer "damage"
    t.integer "damage_type_id"
    t.integer "weight"
    t.integer "value"
    t.integer "weapon_props_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["damage_type_id"], name: "index_weapons_on_damage_type_id"
    t.index ["weapon_props_id"], name: "index_weapons_on_weapon_props_id"
  end

end
