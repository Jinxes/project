class CreateUsers < ActiveRecord::Migration[5.2]
  def up
    create_table :users do |t|
      t.string :nickname, limit: 128, null: false
      t.string :email, limit: 128, null: false
      t.string :password, limit: 255, null: false
      t.integer :gender, null: false, default: 0
      t.date :birthday, null: true
      t.string :school, limit: 255, null: true
      t.string :company, limit: 255, null: true
      t.text :sign, null: true
      t.text :intro, null: true
      t.boolean :status, null: false, default: true
      t.timestamps
      t.index :nickname
      t.index :email, unique: true
    end
  end

  def down
    drop_table :users
  end
end
