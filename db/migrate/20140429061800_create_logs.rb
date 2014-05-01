class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.integer :user_id
      t.date :date
      t.text :description
      t.string :title
	  t.integer :minutes

      t.timestamps
    end
  end
end
