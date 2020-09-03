class ArticlesController < ApplicationController
    def show # shows the specified article based on id
      # byebug # call here to pause execution and see what params is 
      @article = Article.find(params[:id])  # '@' converts var to instance variable to access in the show view
                                            # params is whats passed into the url so /articles/1, 1 is the params
    end

    def index
      @articles = Article.all
    end
end