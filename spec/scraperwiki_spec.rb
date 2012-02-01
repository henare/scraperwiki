require 'spec_helper'

describe ScraperWiki do
  describe "scraper" do
    it "should return an empty array if no name is specified" do
      ScraperWiki.scraper.getinfo.should be_empty
    end
  end
end
