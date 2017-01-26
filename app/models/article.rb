class Article < ApplicationRecord
	belongs_to :user
  	has_many :taggings
	has_many :tags, through: :taggings

	has_attached_file :thumbnail, styles: { thumb: "500x500>" }
	validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/

	def tag_list
		tags.strip.join(',')
	end

	def tag_list=(tags_string)
 		tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
  		new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
  		self.tags = new_or_found_tags
	end

	def url_title
		title.downcase.gsub(/ /, '-').gsub(/#/, 'N')
	end

	def to_param
		"#{id}-#{url_title}"
	end
end
