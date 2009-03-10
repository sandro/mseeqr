module Mseeqr
  class Track
    include HTTParty
    base_uri "http://www.seeqpod.com"
    headers "User-Agent" => IPHONE_USER_AGENT

    attr_accessor :name, :url

    def initialize(args)
      @name = args[:name]
      @url = args[:url]
    end

    def self.search(query)
      @response = post "/api/iphone", :body => {:q => query}
      @tracks = parse_tracks(@response)
    end

    private

    def self.parse_tracks(response)
      doc = Hpricot(response)
      (doc / "li a").map do |link|
        path = link.get_attribute('href') 
        url = "#{base_uri}#{path}"
        name = link.inner_text
        name.slice!(link.at('span').inner_text)
        Track.new(:name => name, :url => url)
      end
    end
  end
end

