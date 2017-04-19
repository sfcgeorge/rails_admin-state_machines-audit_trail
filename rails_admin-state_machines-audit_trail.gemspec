$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin-state_machines-audit_trail/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin-state_machines-audit_trail"
  s.version     = RailsAdminStateMachinesAuditTrail::VERSION
  s.authors     = ["Simon George"]
  s.email       = ["simon@sfcgeorge.co.uk"]
  # s.homepage    = "github"
  s.summary     = "RailsAdmin custom field for StateMachines::AuditTrail"
  s.description = "RailsAdmin custom field to show StateMachines::AuditTrail."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.2"
end
