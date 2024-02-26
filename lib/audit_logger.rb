require "audit_logger/version"
require "audit_logger/engine"
require "audit_logger/auditable"

module AuditLogger
  class Current < ActiveSupport::CurrentAttributes
    attribute :whodunnit
  end

  def self.whodunnit=(value)
    Current.whodunnit = value
  end

  def self.whodunnit
    Current.whodunnit
  end

  def self.configure
    @config ||= OpenStruct.new
    yield @config if block_given?

    @config
  end

  def self.config
    @config || OpenStruct.new(ignored_attributes: [])
  end
end
