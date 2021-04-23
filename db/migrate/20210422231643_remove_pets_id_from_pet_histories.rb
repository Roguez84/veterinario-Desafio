class RemovePetsIdFromPetHistories < ActiveRecord::Migration[5.2]
  def change
    remove_column :pet_histories, :pets_id, :integer
  end
end
