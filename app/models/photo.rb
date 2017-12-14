class Photo
  include Mongoid::Document
  include Mongoid::Paperclip

  has_mongoid_attached_file :url, styles: { small: "320x240>", medium: "384x288>", large: "640x480>" }

  validates_attachment_content_type :url, content_type: /\Aimage\/.*\z/

  validates :url, presence: true
end
