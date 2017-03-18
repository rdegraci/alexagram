module Alexagram
  class Intent
    
    def initialize request
      @request = request
      @dictionary = @request.intent_json
    end
    
    def name
      @dictionary['name']
    end
    
    def slots
      @dictionary['slots']
    end
    
  end
end

