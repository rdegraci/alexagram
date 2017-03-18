require "spec_helper"

RSpec.describe Alexagram::Session do
  
  describe "New Session" do
    before do
      @json = %{
        {
          "session": {
            "sessionId": "sessionId",
            "application": {
              "applicationId": "applicationId"
            },
            "attributes": {},
            "user": {
              "userId": "userId"
            },
            "new": true
          },
          "request": {
            "type": "IntentRequest",
             "requestId": "requestId",
            "locale": "en-US",
            "timestamp": "2017-03-18T01:51:21Z",
            "intent": {
              "name": "CreateNoun",
              "slots": {
                "noun": {
                  "name": "noun",
                  "value": "person"
                },
                "class": {
                  "name": "class",
                  "value": "Amy"
                }
              }
            }
          },
          "version": "1.0"
        }
      }

      @session = Alexagram::Session.new(@json)
    end

    it "can be initialized with json" do
      expect(@session).not_to be nil
    end

    it "can describe as being a new session" do
      expect(@session.is_new).to eq(true)
    end
    
    it "should return the sessionId" do
      expect(@session.sessionId).to eq('sessionId')
    end

    it "should return the applicationId" do
      expect(@session.applicationId).to eq('applicationId')
    end

    it "should return the userId" do
      expect(@session.userId).to eq('userId')
    end
    
  
  end
  

  
end





