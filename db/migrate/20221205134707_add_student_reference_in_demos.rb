class AddStudentReferenceInDemos < ActiveRecord::Migration[7.0]
  def change
    add_reference :demos, :student
  end
end
