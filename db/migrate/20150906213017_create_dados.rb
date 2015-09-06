class CreateDados < ActiveRecord::Migration
  def change
    create_table :dados do |t|
      t.string :word1
      t.string :word2
      t.boolean :result

      t.timestamps null: false
    end
    
    def anag
      change_column :result
    end
  end
end
