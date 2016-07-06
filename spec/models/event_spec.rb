require 'rails_helper'

RSpec.describe Event, type: :model do
  it { should belong_to(:app) }
  
  describe "valid with a event_name, id, app_id" do
    it "has an event_name" do
      it { should validate_presence_of(:event_name) }
    end
    it "has an ID" do

    end
    it "has an app_id" do

    end
  end
end
