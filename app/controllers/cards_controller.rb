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

  def correct_count
    @correct_count = -1
      if start
      @correct_count += 1 
  end
  end

  def wrong_count
  
  end

  def avg
    
  end

  def randomizing(cardtype)
      @random = []
      @random2 = []
      Card.where({ :cardtype => [cardtype] }).order("random()").limit(5).each { |k| @random << k.word and @random2 << k.definition}
      @random
      @random2
  end 

  def correctanswer
    @sym = @random2[0]
    @answer = @random[0]
  end

  def wronganswers
    @sym2 = @random[0..5].sort_by {rand}
  end

  def start
    randomizing("rubykeys")
    correctanswer
    wronganswers
  end


  def ruby_functs
    randomizing("rubyfuncts")
    correctanswer
    wronganswers
  end

  def gitcommands
    randomizing("gitcommand")
    correctanswer
    wronganswers
  end

  def rakecommands
     randomizing("rake")
     correctanswer
     wronganswers
  end

  def rubyops
    randomizing("operators")
    correctanswer
    wronganswers
  end

  def ruby_examples
    @v1 = []
    @v2= []
    @v3= []
    @v4= []
    @v5= []
     @random = []
    @random2 = []
    Card.where({ :cardtype => ["rubyexample"] }).order("random()").limit(5).each { |k| @random << k.word and @random2 << k.definition
        @v1 << k.v1
        @v2 << k.v2
        @v3 << k.v3
        @v4 << k.v4
        @v5 << k.v5
      }
    @v1a = @v1[0]
    @v2a= @v2[0]
    @v3a=@v3[0]
    @v4a=@v4[0]
    @v5a= @v5[0]
    @sym = @random2[0]
    @answer = @random[0]
    @sym2 = @random[0..4].sort_by {rand}
  end



end


