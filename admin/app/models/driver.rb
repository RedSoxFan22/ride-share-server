class Driver < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true
  validates :email, presence: true

  belongs_to :organization
  has_many :rides
  has_many :schedule_windows


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # acts_as_token_authenticatable
  # # field :authentication_token

end
