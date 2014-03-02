require 'spec_helper'

describe Setting do
  context "Proposals enabled" do
    it "should return false if no settings are in the database" do
      expect(Setting.proposals_enabled?).to be_falsey
    end

    it "should return true if the database says so" do
      Setting.create(key: 'proposals_enabled', value: "true")
      expect(Setting.proposals_enabled?).to be_truthy
    end

    it "should return false if the database says so" do
      Setting.create(key: 'proposals_enabled', value: "false")
      expect(Setting.proposals_enabled?).to be_falsey
    end
  end
end
