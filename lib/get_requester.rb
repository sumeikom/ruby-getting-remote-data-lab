require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

URL = 'https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json'

class GetRequester

    attr_accessor :url

    def initialize(url)
        @url = url
      end

    def inilialize 
        get_requester = GetRequester.new(URL)
    end

    def get_response_body
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
      request = JSON.parse(self.get_response_body)
    end
end