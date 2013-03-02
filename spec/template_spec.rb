require 'spec_helper'

describe Template do
  before do
    @template = Template.new
    @cookbook_mock = mock 'cookbook'
    @cookbook_mock.stub :file_filenames => ['/files/test.json']
  end

  it "should return the template location" do
    @template.location(:name     => 'test',
                       :cookbook => @cookbook_mock).
              should == "/files/test.json"
  end

  it "should raise TemplateNotFound when template does not exist" do
    lambda { @template.location(:name     => 'nottest',
                                :cookbook => @cookbook_mock) }.
                       should raise_error Exceptions::TemplateNotFound
  end
end
