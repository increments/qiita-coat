require "qiita/coat/application"
require "sitespec/rspec"

RSpec.describe "Site spec", :sitespec do
  let(:app) do
    Qiita::Coat::Application
  end

  %w[
    /
    /grid
    /markdown
    /stylesheets/application.css
  ].each do |path|
    describe "GET #{path}", :sitespec do
      it "returns 200" do
        expect(get(path, nil, "SCRIPT_NAME" => "qiita-coat").status).to eq 200
      end
    end
  end
end
