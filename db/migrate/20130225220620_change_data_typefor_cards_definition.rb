class ChangeDataTypeforCardsDefinition < ActiveRecord::Migration
  def self.up
    change_column :cards, :definition, :text
  end

  def self.down
    change_column :cards, :definition, :string
  end
end
