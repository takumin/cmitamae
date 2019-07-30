def gem_config(conf)
  conf.gem File.expand_path(File.dirname(__FILE__))
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
