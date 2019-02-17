class CreateReactionsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :reactions do |t|
      t.string :title
      t.text :reaction_detail
      t.boolean :current
      t.integer :medication_id
      t.timestamps
    end
  end
end
