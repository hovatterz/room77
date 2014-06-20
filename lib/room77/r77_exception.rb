module Room77
  class Room77Exception < Exception
    ERROR_CODES = {
      1 => "Unknown Error",
      2 => "Mal-formed request",
      3 => "Cannot parse request",
      4 => "Request throttled",
      5 => "Connection error",
      6 => "Server error"
    }

    attr_reader :error_code

    def initialize(message, error_code)
      @error_code = ERROR_CODES[error_code]

      super(message)
    end
  end
end
