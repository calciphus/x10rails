class CreateX10modules < ActiveRecord::Migration
  def change
    create_table :x10modules do |t|
      t.text :name
      t.text :unit_code
      t.text :description
      t.boolean :is_dimmable

      t.timestamps
    end
  end
end
