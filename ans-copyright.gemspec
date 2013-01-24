# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ans-copyright/version'

Gem::Specification.new do |gem|
  gem.name          = "ans-copyright"
  gem.version       = Ans::Copyright::VERSION
  gem.authors       = ["sakai shunsuke"]
  gem.email         = ["sakai@ans-web.co.jp"]
  gem.description   = %q{copyright を表示します}
  gem.summary       = %q{copyright を表示します}
  gem.homepage      = "https://github.com/answer/ans-copyright"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
