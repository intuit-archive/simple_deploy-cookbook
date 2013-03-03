require 'spec_helper'

describe Logger do
  it "should send a log message to Chef::Log" do
    Chef::Log.should_receive(:send).with('info', 'test123')
    Logger.log 'test123'
  end
end
