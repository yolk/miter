require 'rubygems'

gem 'activeresource'
require 'active_resource'

require 'miter/active_resource_fix'

module Miter
  
  class Base < ActiveResource::Base

    def self.auth(account, apikey)
      apikey = CGI.escape(apikey)
      self.site =  "http://#{apikey}:x@#{account}.mite.yo.lk/"
    end    

  end

  class Project < Base; end
  class Tasks < Base; end
  class Customers < Base; end

end
