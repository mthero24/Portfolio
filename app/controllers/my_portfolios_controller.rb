class MyPortfoliosController < ApplicationController
    def index
        @portfolio = MyPortfolio.all
    end

    def new
        @portfolio = MyPortfolio.new    
    end

    def create
        @portfolio = MyPortfolio.new(params.require(:my_portfolio).permit(:title, :subtitle, :body))
    
        respond_to do |format|
          if @portfolio.save
            format.html { redirect_to @portfolio, notice: 'Portfoilio was successfully created.' }
            format.json { render :my_portfolios, status: :created, location: @portfolio }
          else
            format.html { render :new }
            
          end
        end
    end
    def edit
        @portfolio = MyPortfolio.find(params[:id])
    end

    def update
        @portfolio = MyPortfolio.find(params[:id])
        respond_to do |format|
          if @portfolio.update(params.require(:my_portfolio).permit(:title, :subtitle, :body))
            format.html { redirect_to :my_portfolios, notice: 'portfolio was successfully updated.' }
            format.json { render :my_portfolios, status: :ok, location: @blog }
          else
            format.html { render :edit }
            
          end
        end
      end
end
