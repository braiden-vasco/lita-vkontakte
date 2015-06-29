# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = 'lita-vkontakte'
  spec.version       = '1.1.0'
  spec.authors       = ['Braiden Vasco']
  spec.email         = ['braiden-vasco@mailtor.net']

  spec.summary       = 'VKontakte adapter for the Lita chat bot'
  spec.description   = 'VKontakte adapter for the Lita chat bot.'
  spec.homepage      = 'https://github.com/braiden-vasco/lita-vkontakte'
  spec.license       = 'MIT'

  spec.respond_to?(:metadata) and
    spec.metadata['lita_plugin_type'] = 'adapter'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'github_changelog_generator', '~> 1.6'
  spec.add_development_dependency 'yard', '~> 0.8'
  spec.add_development_dependency 'redcarpet', '~> 3.3'
  spec.add_development_dependency 'rubocop', '~> 0.31'
  spec.add_development_dependency 'rspec', '~> 3.3'
  spec.add_development_dependency 'simplecov', '~> 0.10'

  spec.add_runtime_dependency 'lita', '~> 4.4'
  spec.add_runtime_dependency 'vkontakte_api', '~> 1.4'
end
