class CreateReactionsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :reactions do |t|
      t.string :title
      t.text :good_reaction
      t.text :bad_reaction
      t.string :status
      t.timestamps
    end
  end
end
