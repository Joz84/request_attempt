class CreateSeconds < ActiveRecord::Migration[5.1]
  def change
    create_table :seconds do |t|
      t.string :name
      t.references :first, foreign_key: true

      t.timestamps
    end
  end
end
