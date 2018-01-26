class User < ActiveRecord::Base
	has_many :attendees
	has_many :events, through: :attendees , foreign_key: :user_id

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
