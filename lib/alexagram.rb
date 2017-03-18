require "alexagram/version"
require "alexagram/session"
require "alexagram/request"
require "alexagram/intent"
require 'json'

module Alexagram
  @json
  
  def self.raw_json
    @json
  end
  
  def self.raw_json= json
    @json = json
  end
  
  def self.version
    dictionary = JSON.parse @json
    dictionary['version']
  end
  
  def self.session
    Alexagram::Session.new(@json)
  end
  
  def self.request
    Alexagram::Request.new(@json)
  end
  
end
