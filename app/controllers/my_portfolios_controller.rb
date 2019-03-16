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
end
