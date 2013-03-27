class AddVariablesToCards < ActiveRecord::Migration
  def change
    add_column :cards, :v1, :string
    add_column :cards, :v2, :string
    add_column :cards, :v3, :string
    add_column :cards, :v4, :string
    add_column :cards, :v5, :string
  end
end
