if RUBY_ENGINE == 'opal'
  require 'opal/three/core'
else
  require 'opal'
  require 'opal/three/version'

  Opal.append_path File.expand_path('../..', __FILE__).untaint
end