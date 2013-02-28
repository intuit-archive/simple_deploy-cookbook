require 'spec_helper'

describe CreateStack do
  before do
    @create_stack = CreateStack.new
    @options = { :object_name       => 'name',
                 :environment       => 'env',
                 :template          => '/tmp/template.json',
                 :inputs            => { 'var1' => 'val1' },
                 :read_outputs_from => ['stack1', 'stack2'] }
  end
  it "should return the create stack command" do
    @create_stack.build_command(options).should == 'test'
  end

  it "should use the stack_name as the template if not provided" do
    @options.delete :template
    @create_stack.build_command(options).should == 'test'
  end

  it "should use default as the environment if not provided" do
    @options.delete :environment
    @create_stack.build_command(options).should == 'test'
  end
end
