require_relative "lib/view_model/version"

Gem::Specification.new do |spec|
  spec.name = "viewmodel"
  spec.version = ViewModel::VERSION
  spec.authors = ["Jef Vlamings"]
  spec.email = ["vlamingsjef@gmail.com"]

  spec.summary = "A ViewModel layer for Ruby on Rails"
  spec.description = "A ViewModel layer for Ruby on Rails"
  spec.homepage = "https://github.com/jefvlamings/view_model"
  spec.license = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 3.0.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/jefvlamings/view_model"
  spec.metadata["changelog_uri"] = "https://github.com/jefvlamings/view_model/releases"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "standard"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rails"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
