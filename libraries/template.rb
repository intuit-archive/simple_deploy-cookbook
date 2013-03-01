class Template

  def location(args)
    name     = args[:name]
    cookbook = args[:cookbook]

    cookbook.template_filenames.each do |file|
      return file if file =~ /^.*#{name}\.json$/
    end
  end

end
