require "sinatra/base"
require "sinatra/reloader"

module Qiita
  module Coat
    class Application < Sinatra::Base
      configure :development do
        register Sinatra::Reloader
      end

      set :root, File.expand_path("../../../..", __FILE__)

      get "/" do
        slim :"roots/show"
      end

      get "/markdown" do
        slim :"docs/markdown"
      end
    end
  end
end
