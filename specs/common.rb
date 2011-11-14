
require 'rubygems'
require 'bundler/setup'

require 'bacon'

$LOAD_PATH.unshift( File.expand_path('../../lib', __FILE__) )
require 'module_with_params'

Bacon.summary_at_exit
