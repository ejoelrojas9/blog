 class ArticlesController < ApplicationController

    #Get /articles (definicion de index)
    def index
        @articles = Article.all 
    end

    # Get /articles/:id (show, lectura)
    def show
        @article = Article.find(params[:id])
    end 

    # Get /articles/new
    def new
        @article = Article.new
    end

    #POST /article (Save article)
    def create
        @article = Article.new(title: params[:article][:title], body: params[:article][:title])
        @article.save
        redirect_to @article
    end

    #PUT /articles/:id (update)
    def update
        
    end

 end    