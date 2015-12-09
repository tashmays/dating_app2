class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :bio
      t.integer :age
      t.string :gender
      t.text :city
      t.text :user_likes
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
