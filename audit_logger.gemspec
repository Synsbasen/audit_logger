require_relative "lib/audit_logger/version"

Gem::Specification.new do |spec|
  spec.name        = "audit_logger"
  spec.version     = AuditLogger::VERSION
  spec.authors     = ["Jimmy Poulsen", "Tobias Knudsen"]
  spec.email       = ["jimmypoulsen96@gmail.com", "tobias.knudsen@gmail.com"]
  spec.homepage    = "https://github.com/Synsbasen/audit_logger"
  spec.summary     = "Extremely simple audit logger for Ruby on Rails."
  spec.description = "AuditLogger is a super simple audit logger for Ruby on Rails applications. It logs changes to your models in a simple and easy to understand way."
  spec.license     = "MIT"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/synsbasen/audit_logger.git/issues",
    "changelog_uri" => "https://github.com/synsbasen/audit_logger.git/blob/master/CHANGELOG.md",
    "documentation_uri" => "https://synsbasen.github.io/audit_logger.git",
    "github_repo" => "ssh://github.com/synsbasen/audit_logger.git",
    "homepage_uri" => "https://api.synsbasen.dk",
    "source_code_uri" => "https://github.com/synsbasen/audit_logger.git",
  }

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7"
end
