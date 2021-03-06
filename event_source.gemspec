# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = 'evt-event_source'
  s.version = '0.24.0.1'
  s.summary = 'Common primitives for event source clients'
  s.description = ' '

  s.authors = ['The Eventide Project']
  s.email = 'opensource@eventide-project.org'
  s.homepage = 'https://github.com/eventide-project/event-source'
  s.licenses = ['MIT']

  s.require_paths = ['lib']
  s.files = Dir.glob('{lib}/**/*')
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.3.3'

  s.add_runtime_dependency 'evt-casing'
  s.add_runtime_dependency 'evt-schema'
  s.add_runtime_dependency 'evt-initializer'
  s.add_runtime_dependency 'evt-identifier-uuid'
  s.add_runtime_dependency 'evt-transform'
  s.add_runtime_dependency 'evt-virtual'
  s.add_runtime_dependency 'evt-async_invocation'

  s.add_development_dependency 'test_bench'
end
