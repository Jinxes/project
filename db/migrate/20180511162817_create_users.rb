class CreateUsers < ActiveRecord::Migration[5.2]
  def up
    create_table :users do |t|
      t.string :username, limit: 128, null: false
      t.string :email, limit: 128, null: false
      t.string :password_digest, limit: 255, null: false
      t.integer :gender, null: false, default: 0
      t.string :phone, limit: 32, null: true
      t.date :birthday, null: true
      t.bigint :avatar, null: true
      t.string :school, limit: 255, null: true
      t.string :company, limit: 255, null: true
      t.text :sign, null: true
      t.text :intro, null: true
      t.boolean :status, null: false, default: true
      t.timestamps
      t.index :username
      t.index :email, unique: true
      t.index :phone, unique: true
    end
  end

  def down
    drop_table :users
  end
end
