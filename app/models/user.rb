class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :first_name, :last_name, :phone
  # validates :phone, numericality: { only_integer: true }
  # validates :phone, length: { maximum: 10 }# 

  PHONE_REGEX = /\A[0-9]*\Z/

  validates_format_of :phone, with: PHONE_REGEX
  validates :phone, length: { is: 10 }
  has_many :posts
  has_many :audit_logs

  def full_name
    last_name.upcase + ", " + first_name.upcase
  end
end
