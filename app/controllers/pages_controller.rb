class PagesController < ApplicationController
  
  def index

    @search = Search.new
	end


  def create
    @search = Search.new(search_params)
    if @search.save!
      @posts = TwitterApi.response(@search.query)
      @stocks = YahooApi.response(@search.query)
  	end
  end

  private

    def search_params
      params.require(:search).permit(:query)
  	end

end