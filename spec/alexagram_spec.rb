require "spec_helper"

RSpec.describe Alexagram do
  
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
          "timestamp": "2017-03-17T19:21:11Z",
          "intent": {
            "name": "CreatePerson",
            "slots": {
              "class": {
                "name": "class",
                "value": "bob"
              }
            }
          }
        },
        "version": "1.0"
      }
    }
    
    Alexagram.raw_json = @json
  end
    
  it "has a module version number" do
    expect(Alexagram::VERSION).not_to be nil
  end
  
  it "has a version number" do
    expect(Alexagram.version).not_to be nil
    expect(Alexagram.version).to eq("1.0")
  end

  it "should assign json" do
    expect(Alexagram.raw_json).not_to eq(nil)
  end
   
  it "should have raw JSON" do
    expect(Alexagram.raw_json).not_to eq(nil)
    expect(Alexagram.raw_json).to eq(@json)
  end
  
  it "should return a Session" do
    expect(Alexagram.session).not_to be(nil)
  end
  
  it "should return a Request" do
    expect(Alexagram.request).not_to be(nil)
  end
  
end
