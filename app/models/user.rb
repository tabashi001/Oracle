class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  enum role: {admin: 0, school: 1, teacher: 2, student: 3, vendor: 4}
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook,:twitter,:google_oauth2]

  validates :role, presence: true

  has_attached_file :profile_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment :profile_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  has_attached_file :document
  validates_attachment :document, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }

	def self.from_omniauth(auth)
    where(email: auth.info.email).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end
end