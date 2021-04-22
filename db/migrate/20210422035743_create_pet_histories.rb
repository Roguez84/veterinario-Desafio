class CreatePetHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :pet_histories do |t|
      t.string :height
      t.string :weight
      t.datetime :vet_visit_date
      t.belongs_to :pets, foreign_key: true

      t.timestamps
    end
  end
end
