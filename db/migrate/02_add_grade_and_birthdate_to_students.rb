class AddGradeAndBirthdateToStudents < ActiveRecord::Migration[6.1]
  def change
    columns_to_add = [
                      {field: :grade,     type: :integer},
                      {field: :birthdate, type: :string}
                     ]
                     
    columns_to_add.each do |column|
      add_column :students, column[:field], column[:type]
    end
  end
end