class PagesController < ApplicationController
    skip_authorization_check
  
    def home
        @categories = Category.all
        @articles = Article.last 9
        @featured_articles = FeaturedArticle.all
    end
    
    def about
    end
    
    def contact
    end
end
