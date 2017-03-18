module Alexagram
  class Request
    
    def initialize json
      @json = json
      @dictionary = JSON.parse(@json)
    end
    
    def type
      @dictionary['request']['type']
    end
    
    def requestId
      @dictionary['request']['requestId']
    end
    
    def locale
      @dictionary['request']['locale']
    end
    
    def timestamp
      @dictionary['request']['timestamp']
    end
    
    def intent_json
      @dictionary['request']['intent']
    end
  end
end
