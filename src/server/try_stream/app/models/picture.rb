class Picture < ActiveRecord::Base
  attr_accessible :avatar
  has_attached_file :avatar,
                    :url => "/system/:hash.:extension",
                    :hash_secret => "longSecretString",
                    :styles => { :medium => "300x300>",
                    						 :thumb => "100x100>" }
                    #:default_url => "/images/:style/missing.png"
  def avatar_url
  	avatar.url(:medium)
  end
end
