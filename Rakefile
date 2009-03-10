# Look in the tasks/setup.rb file for the various options that can be
# configured in this Rakefile. The .rake files in the tasks directory
# are where the options are used.

begin
  require 'bones'
  Bones.setup
rescue LoadError
  begin
    load 'tasks/setup.rb'
  rescue LoadError
    raise RuntimeError, '### please install the "bones" gem ###'
  end
end

ensure_in_path 'lib'
require 'mseeqr'

task :default => 'spec:run'

PROJ.name = 'mseeqr'
PROJ.summary = "Ruby wrapper for seeqpod's mobile service."
PROJ.description = %Q(#{PROJ.summary})
PROJ.authors = 'Sandro Turriate'
PROJ.email = 'sandro.turriate@gmail.com'
PROJ.url = 'http://turriate.com'
PROJ.version = Mseeqr::VERSION
PROJ.rubyforge.name = 'mseeqr'
PROJ.ignore_file = '.gitignore'
PROJ.gem.development_dependencies = []

PROJ.spec.opts << '--color'

# EOF
