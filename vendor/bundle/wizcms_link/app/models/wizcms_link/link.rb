module WizcmsLink
  class Link < ActiveRecord::Base
    belongs_to :category
    validates_presence_of :title

    scope :sc_cite_key, -> ( key ) { where( cite_key: key ) }

    mount_uploader :image, LinkImageUploader

    def previous
      self.class.where('id < ? AND category_id = ?', self.id, self.category_id).limit(1).order("id DESC")[0]
    end

    def next
      self.class.where('id > ? AND category_id = ?', self.id, self.category_id).limit(1).order("id ASC")[0]
    end
  end
end
