# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "memcached"
  s.version = "2.0.0.alpha"

  s.authors = ["Arthur Neves", "Evan Weaver"]
  s.email = "arthurnn@gmail.com"
  s.description = "An interface to the libmemcached C client."
  s.summary = "An interface to the libmemcached C client."
  s.homepage = "http://evan.github.com/evan/memcached/"

  s.files = Dir.chdir(File.expand_path(File.dirname(__FILE__))) do
    `git ls-files -z`.split("\x0").grep(%r{^(lib|ext|vendor)/}) + %w(LICENSE README.md CHANGELOG)
  end
  s.extensions = ["ext/memcached/extconf.rb"]

  s.licenses = ["Academic Free License 3.0 (AFL-3.0)"]

  s.add_development_dependency 'rake'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'activesupport'
  s.add_development_dependency "rake-compiler"
end
