class PagesController < ApplicationController
    def home
        @categories = Category.all
        @articles = Article.last 9
    end
    
    def about
    end
    
    def contact
    end
end
