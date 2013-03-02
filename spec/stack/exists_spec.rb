require 'spec_helper'

describe Stack::Exists do
  before do
    @stack_exists = Stack::Exists.new
    @execute_mock = mock 'execute'
    Execute.stub :new => @execute_mock
    Logger.stub :log => true
    @options = { :name        => 'test123',
                 :environment => 'test321' }
  end

  it "should return true if the stack exists" do
    cmd = "simple_deploy status -e test321 -n test123"
    @execute_mock.should_receive(:run).with(cmd).and_return true
    @stack_exists.exists?(@options).should be_true
  end

  it "should return false if the stack does not exist" do
    cmd = "simple_deploy status -e test321 -n test123"
    @execute_mock.should_receive(:run).with(cmd).and_return false
    @stack_exists.exists?(@options).should be_false
  end
end
