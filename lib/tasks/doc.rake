#!/usr/bin/env ruby

require 'rake'
require 'rake/tasklib'
require 'rdoc/rdoc'

ALLISON = `allison --path`.to_s.strip + '.rb'

  Rake::RDocTask.new(:rdoc) do |rd|

      rd.main = "README"

      rd.rdoc_dir = "doc/rdoc"

      rd.rdoc_files.include(  
          "README",
          "app/**/*.rb",
          "lib/**/*.rb")

      rd.title = "Clocking IT"

      rd.options << '--line-numbers'
      rd.options << '--inline-source'
      rd.options << '--all' # all methods, not just public
#      rd.options << '--diagram'

      rd.template = ALLISON if File.exist?(ALLISON)
  end
