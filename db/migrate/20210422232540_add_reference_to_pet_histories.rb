class AddReferenceToPetHistories < ActiveRecord::Migration[5.2]
  def change
    add_reference :pet_histories, :pet, index: true, foreign_key: true
  end
end
