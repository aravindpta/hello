class CreateBloods < ActiveRecord::Migration
  def change
    create_table :bloods do |t|
      t.string :group
      t.integer :quantity

      t.timestamps
    end
  end
end
