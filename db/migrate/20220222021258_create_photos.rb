class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date_time
      t.string :file_name

      t.timestamps
    end
  end
end
