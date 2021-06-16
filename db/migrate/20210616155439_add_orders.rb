class AddOrders < ActiveRecord::Migration[6.1]
  def change
  	create_table :orders do |t|
  		t.text :name
  		t.string :phone
  		t.string :adress
  		t.string :order
  		t.decimal :sum

  		t.timestamps
  	end
  end
end
