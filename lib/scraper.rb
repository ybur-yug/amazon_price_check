require 'mechanize'

module Scraper
  class Engine
    def initialize
      @browser = Mechanize.new
    end

    def browser
      @browser
    end

    def amazon_search(keywords)
      form = amazon_search_form["field-keywords"]
      form["field-keywords"] = keywords
      # submit form
      # get result
      # hash of items
    end

    def amazon
      @browser.get('http://www.amazon.com')
    end

    def amazon_search_form()
      amazon.forms.first
    end
  end
end
