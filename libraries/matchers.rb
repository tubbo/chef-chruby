if defined? ChefSpec
  def execute_chruby_command(command, version='embedded')
    ChefSpec::Matchers::ResourceMatcher.new \
      :execute, :run, "chruby-exec #{version} -- '#{command}'"
  end

  def install_chruby_gem_package(name, version='embedded')
    ChefSpec::Matchers::ResourceMatcher.new :gem_package, :install, name
  end

end
