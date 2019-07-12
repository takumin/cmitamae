MRuby::Gem::Specification.new('cmitamae') do |spec|
  spec.license = 'MIT'
  spec.author  = [
    'Takumi Takahashi',
  ]
  spec.summary = 'cmitamae'
  spec.bins    = ['cmitamae']

  spec.add_dependency 'mruby-socket', mgem:   'mruby-socket'
  spec.add_dependency 'mitamae',      github: 'itamae-kitchen/mitamae'
  spec.add_dependency 'mruby-ipaddr', github: 'iij/mruby-ipaddr'
end
