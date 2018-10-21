# -*- encoding: utf-8 -*-
# stub: wicked_pdf 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "wicked_pdf".freeze
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Miles Z. Sterrett".freeze]
  s.date = "2018-09-28"
  s.description = "Wicked PDF uses the shell utility wkhtmltopdf to serve a PDF file to a user from HTML.\nIn other words, rather than dealing with a PDF generation DSL of some sort,\nyou simply write an HTML view as you would normally, and let Wicked take care of the hard stuff.\n".freeze
  s.email = "miles.sterrett@gmail.com".freeze
  s.files = [".gitignore".freeze, ".rubocop.yml".freeze, ".rubocop_todo.yml".freeze, ".travis.yml".freeze, "CHANGELOG.md".freeze, "Gemfile".freeze, "LICENSE.txt".freeze, "README.md".freeze, "Rakefile".freeze, "gemfiles/2.3.gemfile".freeze, "gemfiles/3.0.gemfile".freeze, "gemfiles/3.1.gemfile".freeze, "gemfiles/3.2.gemfile".freeze, "gemfiles/4.0.gemfile".freeze, "gemfiles/4.1.gemfile".freeze, "gemfiles/4.2.gemfile".freeze, "gemfiles/5.0.gemfile".freeze, "gemfiles/rails_edge.gemfile".freeze, "generators/wicked_pdf/templates/wicked_pdf.rb".freeze, "generators/wicked_pdf/wicked_pdf_generator.rb".freeze, "init.rb".freeze, "lib/generators/wicked_pdf_generator.rb".freeze, "lib/wicked_pdf.rb".freeze, "lib/wicked_pdf/middleware.rb".freeze, "lib/wicked_pdf/pdf.js".freeze, "lib/wicked_pdf/pdf_helper.rb".freeze, "lib/wicked_pdf/railtie.rb".freeze, "lib/wicked_pdf/tempfile.rb".freeze, "lib/wicked_pdf/version.rb".freeze, "lib/wicked_pdf/wicked_pdf_helper.rb".freeze, "lib/wicked_pdf/wicked_pdf_helper/assets.rb".freeze, "test/fixtures/document_with_long_line.html".freeze, "test/fixtures/wicked.css".freeze, "test/fixtures/wicked.js".freeze, "test/functional/pdf_helper_test.rb".freeze, "test/functional/wicked_pdf_helper_assets_test.rb".freeze, "test/functional/wicked_pdf_helper_test.rb".freeze, "test/test_helper.rb".freeze, "test/unit/wicked_pdf_test.rb".freeze, "test/unit/wkhtmltopdf_location_test.rb".freeze, "wicked_pdf.gemspec".freeze]
  s.homepage = "https://github.com/mileszs/wicked_pdf".freeze
  s.licenses = ["MIT".freeze]
  s.requirements = ["wkhtmltopdf".freeze]
  s.rubygems_version = "2.5.2.2".freeze
  s.summary = "PDF generator (from HTML) gem for Ruby on Rails".freeze
  s.test_files = ["test/fixtures/document_with_long_line.html".freeze, "test/fixtures/wicked.css".freeze, "test/fixtures/wicked.js".freeze, "test/functional/pdf_helper_test.rb".freeze, "test/functional/wicked_pdf_helper_assets_test.rb".freeze, "test/functional/wicked_pdf_helper_test.rb".freeze, "test/test_helper.rb".freeze, "test/unit/wicked_pdf_test.rb".freeze, "test/unit/wkhtmltopdf_location_test.rb".freeze]

  s.installed_by_version = "2.5.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 0"])
      s.add_development_dependency(%q<rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.50.0"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_development_dependency(%q<mocha>.freeze, ["= 1.3"])
      s.add_development_dependency(%q<test-unit>.freeze, [">= 0"])
    else
      s.add_dependency(%q<activesupport>.freeze, [">= 0"])
      s.add_dependency(%q<rails>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.50.0"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<mocha>.freeze, ["= 1.3"])
      s.add_dependency(%q<test-unit>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 0"])
    s.add_dependency(%q<rails>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.50.0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<mocha>.freeze, ["= 1.3"])
    s.add_dependency(%q<test-unit>.freeze, [">= 0"])
  end
end
