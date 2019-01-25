#code goes here
require "date"
class Story
  attr_reader :section, :subsection, :published, :title, :abstract, :link, :photo
  def initialize(json_hash)
    json_hash
    @section = json_hash[:section]
    @subsection = json_hash[:subsection]
    @title = json_hash[:title]
    @abstract = json_hash[:abstract]
    @link = json_hash[:url]
    date = json_hash[:created_date]
    @published = Date.parse(date).strftime("%B %d, %Y") if date
    @photo = find_normal_photo(json_hash[:multimedia]) || "No Photo Available"
  end

  def self.load_stories(json_hash)
    result = []
    json_hash[:results].each do |object|
      result << Story.new(object)
    end
    result
  end

  def find_normal_photo(multimedia_hash)
    photo = multimedia_hash.find { |photo|
      photo[:format] == "Normal"
    }
    photo[:url] if photo
  end
end
