class Template
  def initialize(name)
    @name = name
  end

  def location
    File.expand_path("../../cookbooks/", __FILE__) + @name + ".json"
  end
end
