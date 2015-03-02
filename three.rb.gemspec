# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'three.rb/version'

Gem::Specification.new do |s|
  s.name          = "three.rb"
  s.version       = ThreeRb::VERSION
  s.authors       = ["George Plymale", "Gabriel Rios", "George D. Plymale II"]
  s.email         = ["george@orbitalimpact.com"]
  s.homepage      = "https://github.com/orbitalimpact/three.rb"
  s.summary       = "Three.JS in Ruby"
  s.description   = "Three.JS in Ruby for browser-based applications and games."

  s.files          = `git ls-files`.split("\n")
  s.executables    = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.test_files     = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths  = ['lib']

  s.add_runtime_dependency 'opal', '~> 0.7.0'
  s.add_development_dependency 'yard'
  s.add_development_dependency 'rake'
end
