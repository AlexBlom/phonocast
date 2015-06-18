lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name        = 'cassette'
  spec.version     = '0.1'
  spec.date        = '2015-06-06'
  spec.summary     = "Podcast Feed from mp3 files"
  spec.description = "description"
  spec.authors     = ["Alex Blom"]
  spec.email       = 'alex@alexblom.com'
  spec.homepage    =
    'http://alexblom.com'
  spec.license     = 'MIT'

  spec.files         = Dir.glob("{bin,lib}/**/*") + %w(LICENSE README.md)
  spec.executables   = ["cassette"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'ruby-mp3info'
  spec.add_runtime_dependency 'thor'

  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'libxml-ruby'
  spec.add_development_dependency 'rake'
end