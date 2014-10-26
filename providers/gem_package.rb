action :install do
  ruby_dir = if new_resource.ruby_version =~ /\A\d/
    "ruby-#{new_resource.ruby_version}"
  else
    new_resource.ruby_version
  end

  gem_package new_resource.name do
    package_name new_resource.package_name
    gem_binary "/opt/rubies/#{ruby_dir}/bin/gem"
    version new_resource.version
    action :install
  end
end

action :remove do
  ruby_dir = if new_resource.ruby_version =~ /\A\d/
    "ruby-#{new_resource.ruby_version}"
  else
    new_resource.ruby_version
  end

  gem_package new_resource.name do
    package_name new_resource.package_name
    gem_binary "/opt/rubies/#{ruby_dir}/bin/gem"
    version new_resource.version
    action :remove
  end
end
