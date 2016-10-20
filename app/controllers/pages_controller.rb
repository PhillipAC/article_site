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
    
    def unauthorized
        @view = cookies[:view_count]
        unless @view
            @view = 0
            cookies[:view_count] = @view
        end
        cookies[:view_count] = @view.to_i + 1
        if cookies[:view_count].to_i > 10
            redirect_to "http://www.youtube.com/watch?v=btndHOYkCJ0"
        end
    end
end
