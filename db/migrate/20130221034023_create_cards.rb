class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :definition
      t.string :word

      t.timestamps
    end
  end
end
