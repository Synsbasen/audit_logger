require "test_helper"

class AuditLoggerTest < ActiveSupport::TestCase
  test "it has a version number" do
    assert AuditLogger::VERSION
  end
end
