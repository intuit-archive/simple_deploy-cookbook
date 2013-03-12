require 'rubygems'
require 'bundler/setup'

libs = File.expand_path("../../libraries", __FILE__)

require "chef"
require "#{libs}/exceptions"
require "#{libs}/execute"
require "#{libs}/stack"
require "#{libs}/template"

RSpec.configure do |config|
  #spec config
end
