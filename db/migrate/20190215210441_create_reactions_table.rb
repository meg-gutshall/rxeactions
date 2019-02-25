class CreateReactionsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :reactions do |t|
      t.string :title
      t.text :reaction_detail
      t.string :medication_name
      t.string :dosage_amount
      t.text :usage_instructions
      t.integer :medication_id
      t.timestamps null: false
    end
  end
end
