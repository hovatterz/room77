require "httparty"

require "room77/version"
require "room77/hotel"
require "room77/r77_exception"

module Room77
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :api_url, :username, :password, :client_id
  end
end
