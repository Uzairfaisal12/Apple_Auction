class AddNumberToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :number, :string
  end
end
