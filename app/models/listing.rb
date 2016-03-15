class Listing < ActiveRecord::Base
	has_attached_file :image, styles: { large: "400x400#", medium: "300x300#", thumb: "150x150#" },:storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end