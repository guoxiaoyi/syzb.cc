module WizcmsLink
  class Link < ActiveRecord::Base
    belongs_to :category
    validates_presence_of :title

    scope :sc_cite_key, -> ( key ) { where( cite_key: key ) }

    mount_uploader :image, LinkImageUploader
  end
end
