 class ArticlesController < ApplicationController

    #Get /articles (definicion de index) Select * FROM articles
    def index
        #En cuentra todos los registros
        @articles = Article.all 
    end

    # Get /articles/:id (show, lectura)
    def show
        #Encuentra un registro por su id
        @article = Article.find(params[:id])
        #where
        #Article.where.not("id = ?",params[:id])
    end 

    # Get /articles/new
    def new
        @article = Article.new
    end

    #POST /article (Save article)
    def create
        @article = Article.new(title: params[:article][:title], body: params[:article][:body])
        if @article.save
            redirect_to @article
        else
            render :new
        end
    end

    #DELETE /articles/:id
    def destroy
        #DELETE FROM articles
        @article = Article.find(params[:id])
        @article.destroy #Destroy elimina el objeto
        redirect_to articles_path
    end

    #PUT /articles/:id (update)
    def update
       # UPDATe
         #@article.update_atributes({title: 'Nuevo titulo'})   
    end

 end