class MyPortfoliosController < ApplicationController
    def index
        @portfolio = MyPortfolio.all
    end

    def angular
      @portfolio = MyPortfolio.angular
    end
    def ruby_on_rails
      @portfolio = MyPortfolio.ruby_on_rails_portfolio_items
    end
    def new
        @portfolio = MyPortfolio.new    
    end

    def create
        @portfolio = MyPortfolio.new(params.require(:my_portfolio).permit(:title, :subtitle, :body))
    
        respond_to do |format|
          if @portfolio.save
            format.html { redirect_to my_portfolios_path, notice: 'Portfoilio was successfully created.' }
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
            
          else
            format.html { render :edit }
            
          end
        end
    end
    
    def show
        @portfolio = MyPortfolio.find(params[:id])
    end
    
    def destroy
        # perform look up
        @portfolio = MyPortfolio.find(params[:id])
        #delets record
        @portfolio.destroy
        #redirects to portfolios page
        respond_to do |format|
            format.html { redirect_to my_portfolios_url, notice: 'Record was removed.' }
        end
    end
end
