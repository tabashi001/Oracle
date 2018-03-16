class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  enum role: {school: 0, teacher: 1 ,student: 2, vendor: 3}
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook,:twitter,:google_oauth2]

  validates :role, presence: true

  has_attached_file :profile_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment :profile_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  has_attached_file :cover_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment :cover_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  has_attached_file :document
  validates_attachment :document, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
  
  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  has_many :overviews, as: :user
  has_many :courses
  has_many :scholarships
  has_many :placements
  has_many :cutoffs
  has_many :campus
  has_many :school_pictures
  has_many :school_videos
  has_many :school_informations
  has_many :pay_fees, as: :user
  has_many :sale_notes
  has_many :applied_schools
  has_many :users, through: :applied_schools

  def create_picture(images)
    images.each do |image|
      SchoolPicture.create(picture: image)
    end
  end

  def find_location
    loc = Geocoder.coordinates(self.address)
    if loc.present?
      self.update_attribute(:latitude, loc[0])
      self.update_attribute(:longitude, loc[1])
    end
  end


  def create_address
    self.addresses.destroy_all
    addresses.each do |address|
      adrs = self.addresses.create(address: address)
      adrs.find_location if adrs.address.present?
    end
  end



# def self.search
#   binding.pry
#   if search
#     find(:all, :conditions => ['city LIKE ?', "%#{search}%"])
#    else
#      find(:all)
#   end
# end




  # def search(city,role)
  #   binding.pry
  #   conditions = {:city => city,:role => role}
  #   conditions.delete_if {|k,v| v.blank? || k.blank?}
  #   query = conditions.map { |k,val|
  #     if k == :city || k == :role
  #     "#{k} = '#{val}'"
  #     end
  #   }.join(' AND ')
  #   self.users.where(query)
  # end



  def self.search(search)
    #binding.pry
    if search
      User.all
      #where('city LIKE ?', "%#{search}%" || '')
    else
      User.all
    end
  end

  def self.filter(filter)
    if filter
      where(degree_name: filter)
    end
  end





	def self.from_omniauth(auth)
    where(email: auth.info.email).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end
end