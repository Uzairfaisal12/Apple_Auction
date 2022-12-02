class CreateCalls < ActiveRecord::Migration[7.0]
  def change
    create_table :calls do |t|
      t.string :title
      t.integer :name

      t.timestamps
    end
  end
end
