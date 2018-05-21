class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.belongs_to :user, index: true, null: false
      t.string :city, limit: 255, null: false
      t.string :province, limit: 255, null: false
      t.string :country, limit: 255, null: false
      t.string :district, limit: 255, null: true
      t.integer :postalcode, null: false
      t.string :detail, limit: 255, null: false # 详细
      t.string :phone, limit: 32, null: true
      t.string :contact, limit: 64, null: false # 联系人
      t.timestamps
    end
  end
end
