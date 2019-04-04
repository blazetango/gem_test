Gem::Specification.new do |s|
  s.name = %q{chetan_gem}
  s.author = "chetan"
  s.version = "0.0.0"
  s.date = %q{2019-03-29}
  s.summary = %q{awesome_gem is the best}
  s.files = [
    "lib/awesome_gem.rb"
  ]
  s.add_development_dependency 'watir', '~> 6.16'
  s.add_development_dependency 'selenium-webdriver', '~> 3.141', '>= 3.141.0'

  s.homepage    =
    'http://rubygems.org/gems/hola'
  s.require_paths = ["lib"]
end

