require 'rubygems'
require 'bundler/setup'

libs = File.expand_path("../../libraries", __FILE__)

require "#{libs}/create_stack"
require "#{libs}/stack_exists"
require "#{libs}/template"

RSpec.configure do |config|
  #spec config
end
