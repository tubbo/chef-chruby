actions :run
default_action :run

attribute :ruby_version, kind_of: String
attribute :command, kind_of: String, name_attribute: true
attribute :cwd, kind_of: String
attribute :user, kind_of: String
attribute :group, kind_of: String
