require 'rubygems'

gemspec = Gem::Specification.load('lita-vkontakte.gemspec')

github_user, github_project =
  gemspec.homepage.scan(%r{^https://github\.com/([^/]+)/([^/]+)/?$})[0]

require 'bundler/gem_tasks'

task default: [:spec, :lint]

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

task lint: [:rubocop]

require 'rubocop/rake_task'
RuboCop::RakeTask.new

require 'yard'
YARD::Rake::YardocTask.new

desc 'Generate changelog'
task :changelog, [:token] do |_t, args|
  cmd = 'github_changelog_generator'
  cmd << " -u #{github_user}"
  cmd << " -p #{github_project}"
  cmd << " -t #{args[:token]}" if args[:token]

  sh cmd
end
