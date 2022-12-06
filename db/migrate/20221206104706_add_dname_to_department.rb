class AddDnameToDepartment < ActiveRecord::Migration[7.0]
  def change
    # add_column :departments, :dname, :string
    # add_reference :departments, :manager, null: false, foreign_key: true
  end
end
