require 'mechanize'

module Scraper
  class Engine
    def initialize
      @browser = Mechanize.new
      @amazon = @browser.get("http://www.amazon.com")
    end

    def browser
      @browser
    end

    def amazon
      @amazon
    end

    def amazon_search_form()
      @amazon.form_with(class: "nav-searchbar")
    end

    def amazon_search(keywords)
      form = amazon_search_form
      amazon_search_form do |form|
        search_field = form["field-keywords"]
        search_field = keywords
      end
      @browser.submit(form)
    end
  end
end
