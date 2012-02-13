# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "scraperwiki/version"

Gem::Specification.new do |s|
  s.name        = "scraperwiki"
  s.version     = Scraperwiki::VERSION
  s.authors     = ["Henare Degan"]
  s.email       = ["henare.degan@gmail.com"]
  s.homepage    = "http://www.henaredegan.com"
  s.summary     = %q{Interact with ScraperWiki via the command line}
  s.description = %q{Allows you to use ScraperWiki via the command line including running scrapers locally}

  s.add_dependency "httparty"
  s.add_dependency "trollop"

  s.add_development_dependency "rspec"
  s.add_development_dependency "webmock"
  s.add_development_dependency "vcr"

  s.rubyforge_project = "scraperwiki"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
