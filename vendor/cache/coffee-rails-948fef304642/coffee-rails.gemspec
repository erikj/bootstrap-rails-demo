# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "coffee-rails"
  s.version = "4.0.0.beta1"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["Santiago Pastorino"]
  s.date = "2013-03-30"
  s.description = "CoffeeScript adapter for the Rails asset pipeline."
  s.email = ["santiago@wyeworks.com"]
  s.files = [".gitignore", ".travis.yml", "Gemfile", "MIT-LICENSE", "README.markdown", "Rakefile", "coffee-rails.gemspec", "lib/assets/javascripts/coffee-script.js.erb", "lib/coffee-rails.rb", "lib/coffee/rails/engine.rb", "lib/coffee/rails/template_handler.rb", "lib/coffee/rails/version.rb", "lib/rails/generators/coffee/assets/assets_generator.rb", "lib/rails/generators/coffee/assets/templates/javascript.js.coffee", "test/assets_generator_test.rb", "test/assets_test.rb", "test/controller_generator_test.rb", "test/scaffold_generator_test.rb", "test/support/routes.rb", "test/support/site/index.js.coffee", "test/template_handler_test.rb", "test/test_helper.rb"]
  s.homepage = "https://github.com/rails/coffee-rails"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "coffee-rails"
  s.rubygems_version = "2.0.2"
  s.summary = "CoffeeScript adapter for the Rails asset pipeline."
  s.test_files = ["test/assets_generator_test.rb", "test/assets_test.rb", "test/controller_generator_test.rb", "test/scaffold_generator_test.rb", "test/support/routes.rb", "test/support/site/index.js.coffee", "test/template_handler_test.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<coffee-script>, [">= 2.2.0"])
      s.add_runtime_dependency(%q<railties>, ["< 5.0", ">= 4.0.0.beta"])
    else
      s.add_dependency(%q<coffee-script>, [">= 2.2.0"])
      s.add_dependency(%q<railties>, ["< 5.0", ">= 4.0.0.beta"])
    end
  else
    s.add_dependency(%q<coffee-script>, [">= 2.2.0"])
    s.add_dependency(%q<railties>, ["< 5.0", ">= 4.0.0.beta"])
  end
end
