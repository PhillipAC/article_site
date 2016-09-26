class Article < ActiveRecord::Base
    belongs_to :user
    belongs_to :category
    has_many :comments
    has_many :taggeds, dependent: :destroy
    has_many :tags, through: :article
    has_one :featured_article
    def self.search(search)
      if search
        where("title LIKE ?", "%#{search}%")
      else
        all
      end
    end
    
end
