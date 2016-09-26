class PagesController < ApplicationController
    skip_authorization_check
  
    def home
        @categories = Category.first(5)
        @articles = Article.last(9).reverse
        @featured_articles = FeaturedArticle.all
    end
    
    def about
    end
    
    def contact
    end
end
