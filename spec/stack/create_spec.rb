require 'spec_helper'

describe Stack::Create do
  before do
    @create_stack = Stack::Create.new
    @template_mock = mock 'template'
    Template.stub :new => @template_mock
    @options = { :name              => 'name',
                 :cookbook          => 'cookbook',
                 :environment       => 'env',
                 :template          => 'template',
                 :inputs            => { 'var1' => 'val1' },
                 :read_outputs_from => ['stack1', 'stack2'] }
  end

  context "with template provided" do
    before do
      @template_mock.should_receive(:location).
                     with(:name     => @options[:template],
                          :cookbook => @options[:cookbook]).
                     and_return '/files/template.json'
    end

    it "should return the create stack command" do
      cmd = "simple_deploy create -e env -n name -t /files/template.json -i stack1 -i stack2 -a var1=val1"
      @create_stack.build_command(@options).should == cmd
    end

    it "should accept a string as read_outputs_from" do
      @options[:read_outputs_from] = 'stack1'
      cmd = "simple_deploy create -e env -n name -t /files/template.json -i stack1 -a var1=val1"
      @create_stack.build_command(@options).should == cmd
    end
  end

  it "should use the stack name as the template if not provided" do
    @template_mock.should_receive(:location).
                   with(:name     => @options[:name],
                        :cookbook => @options[:cookbook]).
                   and_return '/files/name.json'
    cmd = "simple_deploy create -e env -n name -t /files/name.json -i stack1 -i stack2 -a var1=val1"
    @options.delete :template
    @create_stack.build_command(@options).should == cmd
  end

end
