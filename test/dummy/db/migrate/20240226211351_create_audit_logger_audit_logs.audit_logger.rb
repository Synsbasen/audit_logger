# This migration comes from audit_logger (originally 20240226211105)
class CreateAuditLoggerAuditLogs < ActiveRecord::Migration[7.2]
  def change
    create_table :audit_logger_audit_logs do |t|
      t.references :auditable, polymorphic: true, null: false, index: { name: 'index_audit_logger_audit_logs_on_auditable' }
      t.references :context, polymorphic: true, null: true, index: true
      t.references :whodunnit, polymorphic: true, null: true, index: { name: 'index_audit_logger_audit_logs_on_whodunnit' }
      t.string :action, null: false, default: 'create'
      t.json :audited_changes, null: false, default: {}

      t.timestamps
      t.datetime :deleted_at, index: true
    end
  end
end
