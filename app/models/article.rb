class Article < ApplicationRecord
	belongs_to :user

	has_attached_file :thumbnail, styles: { thumb: "500x500>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/
end
