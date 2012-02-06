require 'spec_helper'

describe ScraperWiki do
  describe "scraper" do
    before do
      VCR.insert_cassette 'scraper'
    end

    after do
      VCR.eject_cassette
    end

    it "should return an empty array if name is empty" do
      ScraperWiki.scraper.getinfo(:name => '').should be_nil
    end

    it "should return a scraper name" do
      scraper_name = 'linuxconfau_2012_programme'
      ScraperWiki.scraper.getinfo(:name => scraper_name)["short_name"].should == scraper_name
    end
  end
end
