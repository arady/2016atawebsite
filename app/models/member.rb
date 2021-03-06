class Member < ActiveRecord::Base
	has_attached_file :image, styles: { large: "1700x1000>", medium: "700x500>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
