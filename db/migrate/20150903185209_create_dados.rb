class CreateDados < ActiveRecord::Migration
  def change
    create_table :dados do |t|
      t.string :word1
      t.string :word2

      t.timestamps null: false
    end
  end
end
