class Logger

  def self.log(message, log_level='info')
    Chef::Log.send log_level, message
  end

end
