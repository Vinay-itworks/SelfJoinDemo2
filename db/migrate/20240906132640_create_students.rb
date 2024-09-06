class CreateStudents < ActiveRecord::Migration[7.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.references :friend, null: true, foreign_key: { to_table: :students }

      t.timestamps
    end
  end
end
