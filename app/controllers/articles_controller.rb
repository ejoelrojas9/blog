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

    def edit
        @article = Article.find(params[:id])
    end

    #POST /article (Save article)
    def create
        # @article = Article.new(title: params[:article][:title], body: params[:article][:body]) es igual a la siguiente linea
        # @article = Article.new(params[:article]) {title: "Titulo", body: "Cuerpo !"}
        @article = Article.new(article_params)
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
         @article = Article.find(params[:id])
         if @article.update(article_params)
            redirect_to @article
         else
            render :edit
         end
    end

    private
    def article_params
        params.require(:article).permit(:title,:body)
    end

 end