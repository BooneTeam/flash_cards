class AddCardTypeToCards < ActiveRecord::Migration
  def change
    add_column :cards, :cardtype, :string
  end
end
