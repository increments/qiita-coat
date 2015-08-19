require "qiita/coat/application"
require "sitespec/rspec"

RSpec.describe "Site spec", :sitespec do
  let(:app) do
    Qiita::Coat::Application
  end

  %w[
    /
    /avatar
    /colors
    /fonts/fontawesome-webfont.eot
    /fonts/fontawesome-webfont.svg
    /fonts/fontawesome-webfont.ttf
    /fonts/fontawesome-webfont.woff
    /fonts/fontawesome-webfont.woff2
    /fonts/FontAwesome.otf
    /images/avatar-example.png
    /images/avatar-example-small.png
    /grid
    /markdown
    /menu
    /panel
    /stylesheets/application.css
    /utilities
  ].each do |path|
    describe "GET #{path}", :sitespec do
      it "returns 200" do
        expect(get(path, nil, "SCRIPT_NAME" => "qiita-coat").status).to eq 200
      end
    end
  end
end
