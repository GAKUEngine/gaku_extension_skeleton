# encoding: UTF-8

Gem::Specification.new do |s|
  s.platform     = Gem::Platform::RUBY
  s.name         = 'gaku_extension_skeleton'
  s.version      = '0.0.1'
  s.summary      = 'GAKU Extension Skeleton'
  s.description  = "GAKU Extension Skeleton"
  s.required_ruby_version = '~> 2.0.0'

  s.authors      = ['Vassil Kalkov']
  s.email        = 'info@genshin.org'
  s.homepage     = 'http://github.com/GAKUEngine/gaku_extension_skeleton'

  s.files = `git ls-files`.split($RS)
  s.test_files = s.files.grep(/^spec\//)
  s.require_path = 'lib'

  s.requirements << 'postgres'

  s.add_dependency 'gaku_core',    '~> 0.1.1'
  s.add_dependency 'gaku_testing', '~> 0.1.1'
  s.add_dependency 'gaku_admin',   '~> 0.1.1'
end
