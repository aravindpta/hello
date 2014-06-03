class CreateStudens < ActiveRecord::Migration
  def change
    create_table :studens do |t|
      t.string :name
      t.integer :age
      t.integer :year

      t.timestamps
    end
  end
end
