class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.references :players, null: false, foreign_key: true
      t.string :score

      t.timestamps
    end
  end
end
