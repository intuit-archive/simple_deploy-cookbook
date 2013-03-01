require 'spec_helper'

describe Template do
  it "should return the template location" do
    template = Template.new('test')
    template_path = File.expand_path("../cookbooks", __FILE__)
    template.location.should == "#{template_path}/example/templates/default/test.json"
  end
end
