require "spec_helper"

RSpec.describe Alexagram::Intent do
  
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
    @intent = Alexagram::Intent.new(@request)
  end
  
  it "can be initialized with a request" do
    expect(@intent).not_to be nil
  end
  it "has a name" do
    expect(@intent.name).to eq("CreateNoun")
  end
  
  
  
  
  describe "ListNoun" do
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
            "timestamp": "2017-03-18T04:07:11Z",
            "intent": {
              "name": "ListNoun",
              "slots": {
                "resource": {
                  "name": "resource",
                  "value": "cars"
                }
              }
            }
          },
          "version": "1.0"
        }
      }
      
      @request = Alexagram::Request.new(@json)
      @intent = Alexagram::Intent.new(@request)
    end
    
    it "has a name of ListNoun" do
      expect(@intent.name).to eq("ListNoun")
    end
    
    
  end
  
  describe "CreateNoun" do
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
            "timestamp": "2017-03-18T04:28:59Z",
            "intent": {
              "name": "CreateNoun",
              "slots": {
                "noun": {
                  "name": "noun",
                  "value": "thing"
                },
                "class": {
                  "name": "class",
                  "value": "car"
                }
              }
            }
          },
          "version": "1.0"
        }
      }

      @request = Alexagram::Request.new(@json)
      @intent = Alexagram::Intent.new(@request)
    end

    
    it "has a name of CreateNoun" do
      expect(@intent.name).to eq("CreateNoun")
    end
    
    it "has slots" do
      expect(@intent.slots).not_to eq(nil)
    end
      
  end
  
end
