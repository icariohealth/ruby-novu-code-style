lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'novu/style/version'

Gem::Specification.new do |spec|
  spec.name          = 'novu-style'
  spec.version       = Novu::Style::VERSION
  spec.authors       = ['Novu']
  spec.email         = ['info@novu.com']

  spec.summary       = 'Novu style guides and shared style configs.'
  spec.homepage      = 'https://github.com/novu/novu-style'

  spec.required_ruby_version = '>= 3.2'
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://novullc.artifactoryonline.com/novullc/api/gems/libs-dev-gems-snapshot-local'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop', '>= 1.56.3'
  spec.add_dependency 'rubocop-rails', '~> 2.21.1'

  spec.add_dependency 'rubocop-rake', '~> 0.6.0'
  spec.add_dependency 'rubocop-rspec', '~> 2.24.0'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake', '~> 10.0'
end
