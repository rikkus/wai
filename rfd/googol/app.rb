# This file contains your application, it requires dependencies and necessary
# parts of the application.
require 'rubygems'
require 'ramaze'

URI::DEFAULT_PARSER = 
  URI::Parser.new(:UNRESERVED => URI::REGEXP::PATTERN::UNRESERVED + '|')

# Make sure that Ramaze knows where you are
Ramaze.options.roots = [__DIR__]

require __DIR__('controller/init')
