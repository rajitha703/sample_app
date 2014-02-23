class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :FIRST_NAME
      t.string :MIDDLE_NAME
      t.string :LAST_NAME
      t.date :DATE_OF_BIRTH
      t.integer :AGE
      t.string :GENDER
      t.string :NATIONALITY

      t.timestamps
    end
  end
end
