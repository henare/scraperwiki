require 'trollop'

module ScraperWiki
  class CLI
    def self.execute
      global_options = Trollop::options do
        banner = "Usage: scraperwiki command [options]"
        opt :help, "Show this message", :short => "-h"
        stop_on "clone"
      end

      command = ARGV.shift
      command_options = case command
        when "clone"
          Trollop::options do
            command = {:action => command, :scraper_name => ARGV[0]}
          end
        else
          Trollop::die "unknown subcommand #{command.inspect}"
        end

      case command[:action]
        when "clone"
          raise "No scraper name specificed" if command[:scraper_name].nil?
          require 'scraperwiki'
          ScraperWiki.clone(command[:scraper_name])
      end
    end
  end
end
