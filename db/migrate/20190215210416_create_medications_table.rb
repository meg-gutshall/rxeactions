class CreateMedicationsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :medications do |t|
      t.string :name
      t.string :dosage_amount
      t.string :dosage_form
      t.text :usage_instructions
      t.string :prescribing_doctor
      t.boolean :currently_taking
      t.date :start_date
      t.date :end_date
      t.string :ailment_treated
      t.integer :user_id
      t.timestamps
    end
  end
end
