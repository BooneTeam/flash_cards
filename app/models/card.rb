class Card < ActiveRecord::Base
  attr_accessible :definition, :word, :cardtype
end