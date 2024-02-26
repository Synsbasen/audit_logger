module AuditLogger
  module Auditable
    extend ActiveSupport::Concern

    included do
      has_many :audit_logs, as: :auditable, class_name: 'AuditLogger::AuditLog'

      after_create :log_create
      after_update :log_update
      after_destroy :log_destroy
    end

    private

    def audit_logger_context
      self
    end

    def log_create
      log_action :create
    end

    def log_update
      log_action :update
    end

    def log_destroy
      log_action :destroy
    end

    def log_action(action)
      AuditLogger::AuditLog.create!(
        action: action.to_sym,
        auditable: self,
        context: audit_logger_context,
        whodunnit: AuditLogger.whodunnit,
        audited_changes: saved_changes
      )
    end
  end
end
