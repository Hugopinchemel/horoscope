class CreatePredictions < ActiveRecord::Migration[7.1]
  def change
    create_table :predictions do |t|
      t.date :date
      t.string :sign
      t.text :text_work
      t.text :text_love
      t.text :text_money

      t.timestamps
    end
  end
end
