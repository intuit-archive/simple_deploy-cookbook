class Misc
  def self.sleep_to_prevent_exceeding_api_threshold
    x = 3
    Logger.log "Backing off fo #{x} seconds to not exceed Cloud Formation API limit."
    sleep x
  end
end
