require 'spec_helper'

describe Stack::Exists do
  it "should return the command to check if stack exists" do
    stack_exists = Stack::Exists.new
    options = { :name        => 'test123',
                :environment => 'test321' }
    cmd = "simple_deploy status -e test321 -n test123"
    stack_exists.should_receive(:`).with(cmd)
    $?.stub :success? => true
    stack_exists.exists?(options).should == true
  end
end
