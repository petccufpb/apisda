class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.string :title, :null => false
      t.text :body, :null => false
      t.string :images, array: true, :null => false
      
      t.timestamps
    end
  end
end
