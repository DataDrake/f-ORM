require 'lib/f-ORM'
Gem::Specification.new do |s|
  s.name        = 'f-ORM'
  s.version     = F_ORM::VERSION
  s.date        = '2016-2-6'
  s.summary     = 'f-ORM - Fast/Flexible/Free ORM for Ruby'
  s.description = ''
  s.authors     = ['B. T. Meyers']
  s.email       = 'bmeyers@datadrake.com'
  s.files       =  Dir.glob('lib/**/*') + %w(LICENSE README.md)
  s.homepage    = 'http://rubygems.org/gems/f-ORM'
  s.license     = 'MIT'
  s.add_development_dependency 'rake'
end