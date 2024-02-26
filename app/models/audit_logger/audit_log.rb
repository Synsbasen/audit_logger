module AuditLogger
  class AuditLog < ApplicationRecord
    ACTIONS = %w[create update destroy].freeze

    belongs_to :auditable, polymorphic: true, optional: true
    belongs_to :context, polymorphic: true, optional: true
    belongs_to :whodunnit, polymorphic: true, optional: true

    validates :action, presence: true, inclusion: { in: ACTIONS }

    default_scope { includes(:whodunnit) }

    def audited_changes=(value)
      ignored_attributes = %i[id created_at updated_at deleted_at]
      value = value.except(*ignored_attributes)

      super(value)
    end
  end
end
