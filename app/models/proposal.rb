class Proposal < ActiveRecord::Base
  belongs_to :user

  validates :user_id,
    presence: true

  validates :title,
    presence: true,
    length: {in: 4..80}

  validates :description,
    presence: true,
    length: {in: 4..1024}


end
