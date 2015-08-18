require "sinatra/base"
require "sinatra/reloader"
require "slim"

module Qiita
  module Coat
    class Application < Sinatra::Base
      configure :development do
        register Sinatra::Reloader
      end

      helpers do
        def uri(path, absolute = false, *args)
          super(path, absolute, *args)
        end
      end

      set(
        :markdown,
        autolink: true,
        fenced_code_blocks: true,
        gh_blockcode: true,
        tables: true,
      )

      set :root, File.expand_path("../../../..", __FILE__)

      get "/" do
        slim :"roots/show"
      end

      get "/:document_id" do
        slim :"docs/#{params[:document_id]}"
      end
    end
  end
end
