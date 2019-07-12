require 'HTTParty'
require 'Nokogiri'


class Scraper
  attr_accessor :parse_page
  def initialize(url)
    doc = HTTParty.get(url)
    @parse_page ||= Nokogiri::HTML(doc)
  end

  def get_project_data
    descriptions = []
    projects = Hash.new
    current_cat = nil
    data = parse_page.at_css("div#section-projects").css(".panel-content").children.each do |element|
      if element.name == "h4"
        current_cat = element.text
        descriptions = []
        projects[element.text] = []
      elsif element.name == "p"
        descriptions << element.text
        projects[current_cat] = descriptions
      end
    end
  end
end

uganda = Scraper.new("https://www.volunteerhq.org/volunteer-in-uganda/")
belize = Scraper.new("https://www.volunteerhq.org/volunteer-in-belize/")
cambodia = Scraper.new("https://www.volunteerhq.org/volunteer-in-cambodia/")
morocco = Scraper.new("https://www.volunteerhq.org/volunteer-in-morocco/")
