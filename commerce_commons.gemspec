require_relative "lib/commerce_commons/version"

Gem::Specification.new do |spec|
  spec.name        = "commerce_commons"
  spec.version     = CommerceCommons::VERSION
  spec.authors     = ["Jaryl Sim"]
  spec.email       = ["jaryl.sim@me.com"]
  spec.homepage    = "https://github.com/jaryl/commerce_commons"
  spec.summary     = "Rails engine with only essential e-commerce primitives."
  spec.description = spec.summary
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.3.2"
end
