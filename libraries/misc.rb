class Misc
  def self.sleep_to_prevent_exceeding_api_threshold
    x = 5
    Chef::Log.info "Backing off for #{x} seconds to not exceed Cloud Formation API limit."
    sleep x
  end
end
