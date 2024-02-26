Rails.application.routes.draw do
  mount AuditLogger::Engine => "/audit_logger"
end
