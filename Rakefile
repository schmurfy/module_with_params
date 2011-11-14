#!/usr/bin/env rake
require "bundler/gem_tasks"

task :default => :test

task :test do
  require 'bacon'
  
  Dir[File.expand_path('../specs/*_spec.rb', __FILE__)].each do |file|
    load(file)
  end

end

