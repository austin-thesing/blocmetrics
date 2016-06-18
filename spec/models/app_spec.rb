require 'rails_helper'

RSpec.describe App, type: :model do
  let(:app) {App.create!(name: "New App", url: "http://bloccit.bloc-austin.xyz")}
  describe "attributes" do
    it "valid with a name and a url" do
      expect(app).to have_attributes(name: "New App", url: "http://bloccit.bloc-austin.xyz")
    end
  end
end
