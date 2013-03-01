class Template

  def initialize(name)
    @name = name
  end

  def location(args)
    name     = args[:name]
    cookbook = args[:cookbook]

    cookbook.template_filenames.each do |f|
      return f if f =~ /^.*#{f}.json$/
    end
  end

end
