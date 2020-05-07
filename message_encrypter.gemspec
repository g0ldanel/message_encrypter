$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "message_encrypter/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "message_encrypter"
  spec.version     = MessageEncrypter::VERSION
  spec.authors     = ["g0ldan"]
  spec.email       = ["vgarpre@gmail.com"]
  spec.homepage    = "https://github.com/g0ldanel/message_encrypter"
  spec.summary     = "Wrapper around ActiveSupport::MessageEncryptor"
  spec.description = "Wrapper around ActiveSupport::MessageEncryptor"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.


  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.3"

end
