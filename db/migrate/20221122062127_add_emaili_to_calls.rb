class AddEmailiToCalls < ActiveRecord::Migration[7.0]
  def change
    add_column :calls, :email, :string
  end
end
