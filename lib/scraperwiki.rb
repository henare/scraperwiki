require 'httparty'

module ScraperWiki
  def self.scraper
    Scraper
  end

  def self.clone(name)
    scraper = ScraperWiki.scraper.getinfo(:name => name)
    raise "Scraper is not Ruby" if scraper["language"] != "ruby"
    File.open("#{name}.rb", 'w') { |f| f.write(scraper["code"]) }
  end

  class Scraper
    include HTTParty
    base_uri 'https://api.scraperwiki.com/api/1.0/scraper'

    def self.getinfo(args)
      self.get("/getinfo?format=jsondict&name=#{args[:name]}").parsed_response[0]
    end
  end
end
