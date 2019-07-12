module CMItamae
  class CLI < ::MItamae::CLI
    def run
      return print_usage if @command.nil?

      case @command
      when 'local'
        Local.new(@args).run
      when 'version'
        puts "CMItamae v#{CMItamae::VERSION}"
        puts "MItamae v#{MItamae::VERSION}"
      when 'help'
        print_help
      else
        puts %Q[Could not find command "#{@command}"]
        exit 1
      end
    end
  end
end
