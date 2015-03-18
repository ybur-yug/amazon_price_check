require 'mechanize'

module Scraper
  class Engine
    def initialize
      @browser = Mechanize.new
    end

    def browser
      @browser
    end

    def amazon
      @browser.get('http://www.amazon.com')
    end
  end
end
