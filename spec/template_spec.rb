require 'spec_helper'

describe Template do
  it "should return the template location" do
    template = Template.new
    template_path = File.expand_path("../", __FILE__)
    template.location('test').should == template_path
  end
end
