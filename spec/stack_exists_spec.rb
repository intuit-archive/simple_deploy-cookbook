require 'spec_helper'

describe StackExists do
  it "should return the command to check if stack exists" do
    stack_exists = StackExists.new
    options = { :object_name => 'test123',
                :environment => 'test321' }
    stack_exists.build_command(options).should == 'test'
  end
end
