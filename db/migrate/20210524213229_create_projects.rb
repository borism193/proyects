class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.date :start
      t.date :end
      t.integer :state

      t.timestamps
    end
  end
end
