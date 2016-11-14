class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  has_many :projects, class_name: "Project", foreign_key: "user_id"
  has_many :nazer_projects, class_name: "Project", foreign_key: "nazer_id"
  
  has_one :profile

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  #attr_accessible :email, :password, :password_confirmation, :role
  
  def role?(role)
  	role.include? role.to_s
  end
end
