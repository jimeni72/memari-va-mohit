class Project < ActiveRecord::Base
 
  
  has_many :reports
  belongs_to :karfarma, class_name: "User", foreign_key: "user_id"
  belongs_to :nazer, class_name: "User", foreign_key: "nazer_id"
 


  has_attached_file :avatar, :styles => { :medium => "100x100>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


end
