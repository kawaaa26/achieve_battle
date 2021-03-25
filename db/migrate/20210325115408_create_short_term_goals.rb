class CreateShortTermGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :short_term_goals do |t|
      t.string :title
      t.text :detail
      t.float :experience
      t.string :image

      t.timestamps
    end
  end
end
