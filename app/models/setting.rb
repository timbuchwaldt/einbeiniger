class Setting < ActiveRecord::Base
  def self.proposals_enabled?
    proposals_enabled = Setting.where(key: "proposals_enabled").first
    proposals_enabled && proposals_enabled.value == "true"
  end
end
