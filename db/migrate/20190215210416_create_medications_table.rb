class CreateMedicationsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :medications do |t|
      t.string :name
      t.string :dosage_amount
      t.string :dosage_form
      t.text :usage_instructions
      t.string :prescribing_doctor
      t.datetime :start_date
      t.datetime :end_date
      t.string :ailment_treated
    end
  end
end
