class Card < ActiveRecord::Base
  attr_accessible :definition, :word, :cardtype, :v1, :v2, :v3, :v4, :v5
end
