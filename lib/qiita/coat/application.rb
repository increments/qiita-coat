require "sinatra/base"

module Qiita
  module Coat
    class Application < Sinatra::Base
      set :root, File.expand_path("../../../..", __FILE__)

      get "/" do
        slim :"roots/show"
      end
    end
  end
end
