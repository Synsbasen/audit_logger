module AuditLogger
  class AuditLog < ApplicationRecord
    ACTIONS = %w[create update destroy].freeze

    belongs_to :auditable, polymorphic: true, optional: true
    belongs_to :context, polymorphic: true, optional: true
    belongs_to :whodunnit, polymorphic: true, optional: true

    validates :action, presence: true, inclusion: { in: ACTIONS }

    default_scope { includes(:whodunnit) }

    def audited_changes=(value)
      value = value.except(*AuditLogger.config.ignored_attributes)

      super(value)
    end
  end
end
