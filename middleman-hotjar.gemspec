# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

Gem::Specification.new do |s|
  s.name = 'middleman-hotjar'
  s.version = '0.0.2'
  s.platform = Gem::Platform::RUBY
  s.authors = ['Kieran Hunt']
  s.email = ['kieran.hunt92@gmail.com']
  s.homepage = 'http://github.com/KieranHunt/middleman-hotjar'
  s.summary = '📈 Add Hotjar analytics to your Middleman site'
  s.description = <<~DESCRIPTION
    Makes it easy to add Hotjar analytics tracking code to your Middleman site.
    Keeps your configuration where it belongs, in `config.rb`.
  DESCRIPTION

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency('middleman-core', ['>= 4.0'])
end
