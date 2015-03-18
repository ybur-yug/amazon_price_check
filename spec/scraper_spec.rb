require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'pry'


context "on creation" do
  let (:scraper) { Scraper::Engine.new }

  describe Scraper::Engine do
    it "has a browser" do
      expect(scraper.browser.class).to eq Mechanize
    end
  end
end
