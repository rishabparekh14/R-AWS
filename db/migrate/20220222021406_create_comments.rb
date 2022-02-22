class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :photo, null: false, foreign_key: true
      t.date :date_time
      t.string :comment_text

      t.timestamps
    end
  end
end
