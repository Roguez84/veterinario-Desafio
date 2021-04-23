class RemoveForeignKeyFormPetHistory < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :pet_histories, column: :pets_id
  end
end
