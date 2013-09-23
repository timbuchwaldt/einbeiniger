class Proposal < ActiveRecord::Base
  include AASM

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

  def translated_state
    I18n.t("proposal.#{self.state}")
  end

  aasm column: 'state' do
    state :created, initial: true
    state :accepted
    state :rejected
    state :called
    state :backup

    event :accept do
      transitions from: [:created,:rejected,:backup], to: :accepted
    end

    event :reject do
      transitions from: [:created,:accepted,:backup], to: :rejected
    end

    event :backup do
      transitions from: [:created,:accepted,:rejected], to: :backup
    end

    event :call do
      transitions from: [:accepted, :backup], to: :called
    end

  end

end
