class Template
  def initiative(name)
    @name = name
  end

  def location
    '/Users/bweaver/code/dsl_example/cookbooks/example/templates/default' + @name + '.json'
  end
end
