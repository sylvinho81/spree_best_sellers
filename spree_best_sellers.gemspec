# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_best_sellers'
  s.version     =  '3.0.0'
  s.summary     = 'Best Sellers'
  s.description = 'Shows the best sellers'
  s.author      = 'Pablo'
  s.email       = 'pablotorre81@gmail.com'
  s.required_ruby_version = '>= 1.9.3'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")

  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 3.0.0'
end
