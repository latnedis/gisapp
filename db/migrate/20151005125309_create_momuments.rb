class CreateMomuments < ActiveRecord::Migration
  def change
    create_table :momuments do |t|
      t.string :code
      t.string :alternative_name
      t.string :culture
      t.string :monument_type
      t.string :description
      t.string :length
      t.string :width
      t.string :approximate_area
      t.string :photo
      t.string :architectural_style
      t.string :technical_condition
      t.string :material

      t.timestamps null: false
    end
  end
end
