module Alexagram
  class Session
    
    def initialize json
      @json = json
      @dictionary = JSON.parse(@json)
    end
    
    def is_new
      @dictionary['session']['new']
    end
    
    def sessionId
      @dictionary['session']['sessionId']
    end

    def applicationId
      @dictionary['session']['application']['applicationId']
    end

    def userId
      @dictionary['session']['user']['userId']
    end
    
  end
end
