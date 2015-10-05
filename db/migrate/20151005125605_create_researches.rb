class CreateResearches < ActiveRecord::Migration
  def change
    create_table :researches do |t|
      t.string :date
      t.string :code
      t.string :research_type
      t.string :description
      t.string :area
      t.references :author, index: true
      t.references :momument, index: true

      t.timestamps null: false
    end
    add_foreign_key :researches, :authors
    add_foreign_key :researches, :momuments
  end
end
