class CreateIndicators < ActiveRecord::Migration[5.1]
  def change
    create_table :indicators do |t|
      t.string :name, :null => false
      t.text :description, :null => false
      t.string :metric, :null => false
      t.string :status
      t.json :samples, array: true, :null => false

      t.timestamps
    end
  end
end
