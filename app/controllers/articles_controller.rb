class ArticlesController < ApplicationController
    def show # shows the specified article based on id
      # byebug # call here to pause execution and see what params is 
      @article = Article.find(params[:id])  # '@' converts var to instance variable to access in the show view
                                            # params is whats passed into the url so /articles/1, 1 is the params
    end

    def index
      @articles = Article.all
    end

    def new
      @article = Article.new  # this allows the embedded ruby in new.html.erb to run since @article is has no errors and skips the conditional
    end

    def create
      # render plain: params[:article] # shows the params in plaintext
      @article = Article.new(params.require(:article).permit(:title, :description))  # permit title and description to create new article instance
      # render plain: @article.inspect
      if @article.save  # saves article in db, returns false if not saved, can access errors: article.errors.full_messages
        flash[:notice] = "Article was created successfully."  # built-in ruby helper for flashes on certain actions
        redirect_to @article # extract the id from the article and redirect to that article. Displayed in application.html.erb
      else # if save fails due to things like validation errors
        render 'new'  # renders the new.html.erb, then hits the error check in there and has access to this instance var @article
      end
                                          
    end
end