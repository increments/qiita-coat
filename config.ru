$LOAD_PATH.unshift(File.expand_path("../lib", __FILE__))
require "qiita/coat/application"

run Qiita::Coat::Application
