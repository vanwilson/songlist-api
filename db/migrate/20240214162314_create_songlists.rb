class CreateSonglists < ActiveRecord::Migration[7.0]
  def change
    create_table :songlists do |t|
      t.integer :user_id
      t.string :title
      t.string :for_date

      t.timestamps
    end
  end
end
