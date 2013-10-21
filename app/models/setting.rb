class Setting < ActiveRecord::Base
  def self.proposals_enabled?
    Setting.where(key: "proposals_enabled").first.value == "true"
  end
end
