# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_02_26_211351) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "audit_logger_audit_logs", force: :cascade do |t|
    t.string "auditable_type", null: false
    t.bigint "auditable_id", null: false
    t.string "context_type"
    t.bigint "context_id"
    t.string "whodunnit_type"
    t.bigint "whodunnit_id"
    t.string "action", default: "create", null: false
    t.json "audited_changes", default: {}, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["auditable_type", "auditable_id"], name: "index_audit_logger_audit_logs_on_auditable"
    t.index ["context_type", "context_id"], name: "index_audit_logger_audit_logs_on_context"
    t.index ["deleted_at"], name: "index_audit_logger_audit_logs_on_deleted_at"
    t.index ["whodunnit_type", "whodunnit_id"], name: "index_audit_logger_audit_logs_on_whodunnit"
  end
end
