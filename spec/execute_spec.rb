require 'spec_helper'

describe Execute do
  before do
    Logger.stub :log => true
    @execute = Execute.new
  end

  it "should return true if the given cmd ran successfully" do
    @execute.should_receive(:`).with('thecmd')
    $?.stub :success? => true
    @execute.run('thecmd').should be_true
  end

  it "should return false if the given cmd failed" do
    @execute.should_receive(:`).with('thecmd')
    $?.stub :success? => false
    @execute.run('thecmd').should be_false
  end
end
