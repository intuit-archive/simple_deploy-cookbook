require 'spec_helper'

describe Template do
  it "should return the template location" do
    template = Template.new
    template.location('test').should == 'test'
  end
end
