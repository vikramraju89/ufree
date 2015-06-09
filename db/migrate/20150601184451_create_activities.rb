class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.string :location
      t.integer :user_id
      t.date :date
      t.text :description
      t.integer :mood_id

      t.timestamps

    end
  end
end
