class Article < ActiveRecord::Base
    belongs_to :user
    belongs_to :category
    has_many :comments
    has_and_belongs_to_many :tags
    has_one :featured_article
    def self.search(search)
      if search
        where("title LIKE ?", "%#{search}%")
      else
        all
      end
    end
    
end
