class CreateReactionsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :reactions do |t|
      t.string :title
      t.text :good_reaction
      t.text :bad_reaction
      t.string :current
      t.integer :medication_id
      t.timestamps
    end
  end
end
