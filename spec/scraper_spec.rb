require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'pry'

context "A scraper" do
  let (:scraper) { Scraper::Engine.new }
  context "on creation" do
    describe Scraper::Engine do
      it "has a browser" do
        expect(scraper.browser.class).to eq Mechanize
      end
    end
  end

  context "while scraping" do
    describe Scraper::Engine do
      it "can search amazon.com" do
        expect(scraper.amazon.uri.to_s).to eq "http://www.amazon.com/"
      end
      it "can find the search form" do
        expect(scraper.amazon_search_form.class).to eq Mechanize::Form
      end
    end
  end
end
