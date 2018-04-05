
# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

Gem::Specification.new do |s|
  s.name        = 'middleman-hotjar'
  s.version     = '0.0.1'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Kieran Hunt']
  s.email       = ['kieran.hunt92@gmail.com']
  s.homepage    = 'http://github.com/KieranHunt/middleman-hotjar'
  s.summary     = '📈 Add Hotjar analytics to your middleman site'
  # s.description = %q{A longer description of your extension}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  # The version of middleman-core your extension depends on
  s.add_runtime_dependency('middleman-core', ['>= 4.2.1'])

  # Additional dependencies
  # s.add_runtime_dependency("gem-name", "gem-version")
end
