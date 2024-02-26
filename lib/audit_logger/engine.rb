module AuditLogger
  class Engine < ::Rails::Engine
    isolate_namespace AuditLogger
  end
end
