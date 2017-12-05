# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'novu/style/version'

Gem::Specification.new do |spec|
  spec.name          = 'novu-style'
  spec.version       = Novu::Style::VERSION
  spec.authors       = ['Novu']
  spec.email         = ['info@novu.com']

  spec.summary       = 'Novu style guides and shared style configs.'
  spec.homepage      = 'https://github.com/novu/novu-style'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    s.metadata['allowed_push_host'] = 'https://novullc.artifactoryonline.com/novullc/api/gems/libs-dev-gems-snapshot-local'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop', '~> 0.49'
  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
end
