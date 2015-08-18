$LOAD_PATH.unshift(File.expand_path("../lib", __FILE__))
require "qiita/coat/application"

map "/qiita-coat" do
  run Qiita::Coat::Application
end
