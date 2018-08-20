require 'nokogiri'
require 'open-uri'
require 'pry'
require_relative "../config/environment"

class Scraper

  index_url = "https://www.cntraveler.com/gallery/best-museums-in-new-york-city"

  def scrape_index_page(index_url)
    index = Nokogiri::HTML(index_html)
    scraped_museums = index.css(".image-content-container")
    #museums = []
    x = scraped_museums.collect do |museum_content|
      #creating museum objects to be collected
    {:name => museum_content.css(".h2.hed").text
      :museum_page_url => museum_content.css.("a").attribute("href").value
      }
    binding.pry
  end

  def self.scrape_museum_page(museum_page_url)
    museum_html = open(profile_url)
    museum_index = Nokogiri::HTML(museum_html)
    museum_details = {}



  end
