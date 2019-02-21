# class cretaion
class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :tname
      t.integer :age
      t.string :state
      t.integer :pincode
      t.timestamps
    end
  end
end
