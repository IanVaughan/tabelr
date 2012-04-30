Gem::Specification.new do |s|
  s.name          = "tabelr"
  s.summary       = "Creates neat aligned ascii tables from a json input"
  s.description   = "Creates neat aligned ascii tables from a json input"
  s.version       = "0.0.6"
  s.author        = "Ian Vaughan"
  s.email         = "tabelr@ianvaughan.co.uk"
  s.homepage      = "http://ianvaughan.co.uk"
  s.platform      = Gem::Platform::RUBY
  s.required_ruby_version = '>=1.9'
  s.files         = Dir['**/**']
  s.executables   = [ 'tabelr' ]
  s.test_files    = Dir["test/test*.rb"]
  s.has_rdoc      = false
end
