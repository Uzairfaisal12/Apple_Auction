class RemoveDnameFromDepartment < ActiveRecord::Migration[7.0]
  def change
    remove_column :departments, :dname, :string
  end
end
