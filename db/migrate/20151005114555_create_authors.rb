class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :code
      t.string :name
      t.string :photo
      t.string :description
      t.string :job
      t.string :birth
      t.string :death
      t.string :status

      t.timestamps null: false
    end
  end
end
