require_relative 'lib/f-ORM'

task :build do
  system 'gem build f-ORM.gemspec'
end

task :release => :build do
  system "gem push f-ORM-#{f_ORM::VERSION}.gem"
end