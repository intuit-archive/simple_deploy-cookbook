require 'rubygems'
require 'bundler/setup'

libs = File.expand_path("../../libraries", __FILE__)

require "#{libs}/exceptions"
require "#{libs}/misc"
require "#{libs}/stack"
require "#{libs}/template"

RSpec.configure do |config|
  #spec config
end
