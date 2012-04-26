Gem::Specification.new do |s|
  s.name          = "tabelr"
  s.summary       = "Creates neat aligned ascii tables from a json input"
  s.description   = File.read(File.join(File.dirname(__FILE__), 'README'))
  s.requirements  = [ 'Dont know of any!' ]
  s.version       = "0.0.1"
  s.author        = "Ian Vaughan"
  s.email         = "tabelr@ianvaughan.co.uk"
  s.homepage      = ''
  s.platform      = Gem::Platform::RUBY
  s.required_ruby_version = '>=1.9'
  s.files         = Dir['**/**']
  s.executables   = [ 'tabelr' ]
  s.test_files    = Dir["test/test*.rb"]
  s.has_rdoc      = false
end
