actions :install, :remove
default_action :install

attribute :package_name, kind_of: String, name_attribute: true
attribute :ruby_version, kind_of: String
attribute :version, kind_of: String
