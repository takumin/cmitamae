def gem_config(conf)
  conf.gem File.expand_path(File.dirname(__FILE__))

  conf.gem mgem: 'mruby-file-stat',      checksum_hash: '2d3ea9b5d59d2b41133228a71c110b75cb30a31e'
  conf.gem mgem: 'mruby-hashie',         checksum_hash: 'c69255a94debcd641f2087b569f5625509bde698'
  conf.gem mgem: 'mruby-io',             checksum_hash: '6836f424c5ff95d0114a426010b22254804bc9a3'
  conf.gem mgem: 'mruby-open3',          checksum_hash: 'b7480b6300a81d0e5fac469a36a383518e3dfc78'
  conf.gem mgem: 'mruby-shellwords',     checksum_hash: '2a284d99b2121615e43d6accdb0e4cde1868a0d8'
  conf.gem mgem: 'mruby-specinfra',      checksum_hash: 'efb18feeee0cb8d0d49c7a9eadbc0fc074c2be1c'
  conf.gem mgem: 'mruby-socket',         checksum_hash: 'a8b6d6ee4c6ccea81a805cc9204b36c3792123c9'
  conf.gem github: 'k0kubun/mruby-erb',  checksum_hash: '978257e478633542c440c9248e8cdf33c5ad2074'
  conf.gem github: 'eagletmt/mruby-etc', checksum_hash: 'v0.1.0'
end

def debug_config(conf)
  conf.instance_eval do
    @mrbc.compile_options += ' -g'
  end
end

MRuby::Build.new do |conf|
  toolchain :gcc
  debug_config(conf)
  gem_config(conf)
end
