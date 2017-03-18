require "spec_helper"

RSpec.describe Alexagram::Request do
  
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

    @request = Alexagram::Request.new(@json)
  end
  
  it "has a reqeustId" do
    expect(@request.requestId).to eq("requestId")
  end
  
  it "has a locale" do
    expect(@request.locale).to eq("en-US")
  end
  
  it "has a timestamp" do
    expect(@request.timestamp).to eq("2017-03-18T01:51:21Z")
  end
  
  describe "IntentRequest" do
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

      @request = Alexagram::Request.new(@json)
    end

    it "can be initialized with json" do
      expect(@request).not_to be nil
    end


    it "has a request type" do
      expect(@request.type).to eq("IntentRequest")
    end
    
    it "provides for the intent json" do
      expect(@request.intent_json).not_to eq(nil)
    end
    
  end
  
end
