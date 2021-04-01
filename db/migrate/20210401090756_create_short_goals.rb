class CreateShortGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :short_goals do |t|
      t.string :title, null: false, default: ""
      t.text :detail, null: false, default: ""
      t.float :experience, null: false
      # t.string :images, array: true, default: []

      t.timestamps
    end
  end
end
