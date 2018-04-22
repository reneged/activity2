class CreateTropas < ActiveRecord::Migration[5.2]
  def change
    create_table :tropas do |t|
      t.string :name
      t.integer :age
      t.date :dob
      t.text :contactNo

      t.timestamps
    end
  end
end
