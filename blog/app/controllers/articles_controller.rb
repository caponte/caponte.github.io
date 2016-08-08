class ArticlesController < ApplicationController
	#GET /articles
	def index
		#SELECT FROM * 
		@articles = Article.all
	end
	#GET /articles/:id
	def show
		
		@articles = Article.find(params[:id])
		
		#Encontrar articulo
		#Where
		#Article.where.not{"id = ? or tittle = ?", params[:id],params[:tittle]}

	end

	#GET /articles/new
	def new
		@articles = Article.new
	end

	#POST /articles/
	def create
		#INSERT INTO
		@articles = Article.new(article_params)
		if @articles.save
			redirect_to @articles
		else
			render :new
		end 
	end

	def edit
		@articles = Article.find(params[:id])

	end
	def destroy
		#DELETE FROM articles
		@articles= Article.find{params[:id]}
		@articles.destroy
		redirect_to articles_path
	end
	#PUT /articles
	def uptade
		#UPDATE
	end

	private

	def article_params
		params.require(:article).permit(:tittle,:body)
	end
end