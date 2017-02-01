require "bundler/gem_tasks"
require "rake/extensiontask"
require 'rake/testtask'

Rake::TestTask.new do |t|
  #t.libs.push "lib"
  t.test_files = FileList[File.expand_path('../test/**/*_test.rb', __FILE__)]
  t.verbose = false
end

task :build => :compile
Rake::ExtensionTask.new("aprs_parser") do |ext|
  ext.lib_dir = "lib/aprs_parser"
end
