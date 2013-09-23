class Proposal < ActiveRecord::Base
  belongs_to :user
  belongs_to :show

  validates :user_id,
    presence: true

  validates :title,
    presence: true,
    length: {in: 4..80}

  validates :description,
    presence: true,
    length: {in: 4..1024}

  def german_state
    translation = {"added" => "Hinzugefügt", "accepted" => "Akzeptiert", "rejected" => "Abgelehnt"}
    return translation[self.state]
  end
end
