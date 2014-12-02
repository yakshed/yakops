require 'rake'
require 'rspec/core/rake_task'
require 'puppet-lint/tasks/puppet-lint'
require 'puppet-syntax/tasks/puppet-syntax'

desc "Run the specs"
RSpec::Core::RakeTask.new(:spec) do |t|
  file_list = FileList['modules/*/spec/**/*_spec.rb']
  t.rspec_opts = ['--color']
  t.pattern = file_list
end

desc "Generate the docs"
RSpec::Core::RakeTask.new(:doc) do |t|
  t.rspec_opts = ['--format', 'documentation']
  t.pattern = 'modules/spec/*/*_spec.rb'
end

PuppetLint.configuration.ignore_paths = ["vendor/**/*.pp"]
PuppetLint.configuration.send("disable_80chars")
PuppetLint.configuration.send("disable_indentation")
PuppetLint.configuration.send('disable_class_inherits_from_params_class')
PuppetLint.configuration.send('disable_class_parameter_defaults')
PuppetSyntax.exclude_paths = ["vendor/**/*"]

task :default => :test

task :test => [
  :syntax,
  :lint,
  :spec,
]
