class AddForeignKeyToPetHistories < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :pet_histories, :pets
  end
end
