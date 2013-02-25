class CardsController < ApplicationController
 
    def index 
      @cards = Card.all
    end

    def show 
      @card = Card.find(params[:id])
    end

    def new
      @card = Card.new
    end

    def create
      @card = Card.new(params[:card])
    end

    def destroy
      @card = Card.find(params[:id])
      @card.destroy
    end

    def wrong
  end


  def start
    @random = []
    @random2 = []
    Card.where({ :cardtype => ["rubykeys"] }).order("random()").limit(10).each { |k| @random << k.word and @random2 << k.definition}
    @sym = @random2[0]
    @answer = @random[0]
    @sym2 = @random[0..10].sort_by {rand}
     end


  def ruby_functs
    @random = []
    @random2 = []
    Card.where({ :cardtype => ["rubyfuncts"] }).order("random()").limit(10).each { |k| @random << k.word and @random2 << k.definition}
    @sym = @random2[0]
    @answer = @random[0]
    @sym2 = @random[0..10].sort_by {rand}
     end
end
