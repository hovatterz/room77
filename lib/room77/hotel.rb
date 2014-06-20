module Room77
  class Hotel
    def self.search(options = {})
      options[:lang] ||= "en_US"
      options[:client_id] = Room77.configuration.client_id

      request = HTTParty.get("#{Room77.configuration.api_url}/hotel_availability", {
        verify: false,
        basic_auth: {
          username: Room77.configuration.username,
          password: Room77.configuration.password
        },
        query: options
      })

      request.parsed_response
    end
  end
end
