class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.integer :student_id
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :gender
      t.string :academic_year

      t.timestamps
    end
  end
end
