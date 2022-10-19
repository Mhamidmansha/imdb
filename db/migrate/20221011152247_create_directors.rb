class CreateDirectors < ActiveRecord::Migration[5.2]
  def change
    create_table :directors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :age
      t.date :bdy

      t.timestamps
    end
  end
end
