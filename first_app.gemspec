# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "first_app/version"

Gem::Specification.new do |s|
  s.name        = "first app"
  s.version     = '0.0.1'
  s.authors     = ["Jeff Hubbard"]
  s.email       = ["jhubbard@jujamcyn.com"]
  s.homepage    = "http://www.jujamcyn.com"
  s.summary     = "Some useless script that I am writing to learn Ruby"
  s.description = %q{TODO: Write a gem description}
  
  s.rubyforge_project = "first app"
  
  s.files         = 'git ls-files'.split("\n")
  s.test_files    = 'git ls-files -- {test,spec,features}/*'.split("\n")
  s.executables   = 'git ls-files -- bin/*'.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end