MRuby::Gem::Specification.new('cmitamae') do |spec|
  spec.license = 'MIT'
  spec.author  = [
    'Takumi Takahashi',
  ]
  spec.summary = 'cmitamae'
  spec.bins    = ['cmitamae']

  spec.add_dependency 'mruby-ipaddr',  mgem:   'mruby-ipaddr'
  spec.add_dependency 'mitamae',       github: 'itamae-kitchen/mitamae'
end
