# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "fasta/version"

Gem::Specification.new do |s|
  s.name        = "fastaParser"
  s.version     =  Parse::FastaParser::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Cyril Jose"]
  s.email       = ["cyril_jose@ymail.com"]
  s.homepage    = "https://github.com/cnoscode/fastaParser"
  s.summary     = %q{A parser for FASTA files}
  s.description = s.summary
  
  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end