class Member < ActiveRecord::Base
	has_attached_file :image, styles: { large: "700x400>", medium: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
