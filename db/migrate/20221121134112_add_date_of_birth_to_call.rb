class AddDateOfBirthToCall < ActiveRecord::Migration[7.0]
  def change
    add_column :calls, :date_of_birth, :date
  end
end
