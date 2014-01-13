class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :proposals
  has_paper_trail
  validates :name, presence: true
  validates :year_of_birth, presence: true

  def moderator?
    self.role == "moderator"
  end

  def age
    current_year = DateTime.now.year
    current_year - year_of_birth
  end

  # bypass re-entering current password for edit
  def update_with_password(params={})
    params.delete(:current_password)

    if params[:password].blank?
      params.delete(:password)
      params.delete(:password_confirmation) if params[:password_confirmation].blank?
    end
    update_attributes(params)

    clean_up_passwords
  end
end
