# -*- encoding: utf-8 -*-
# stub: rspec-nc 0.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rspec-nc".freeze
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Odin Dutton".freeze]
  s.date = "2016-04-09"
  s.description = "https://github.com/twe4ked/rspec-nc".freeze
  s.email = ["odindutton@gmail.com".freeze]
  s.homepage = "https://github.com/twe4ked/rspec-nc".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.4.10".freeze
  s.summary = "RSpec formatter for Mountain Lion's Notification Center".freeze

  s.installed_by_version = "3.4.10" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<terminal-notifier>.freeze, [">= 1.4"])
  s.add_runtime_dependency(%q<rspec>.freeze, [">= 3"])
  s.add_development_dependency(%q<rake>.freeze, [">= 0"])
  s.add_development_dependency(%q<wwtd>.freeze, [">= 0"])
  s.add_development_dependency(%q<pry>.freeze, [">= 0"])
end