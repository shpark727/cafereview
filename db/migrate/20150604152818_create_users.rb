class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
			t.string :username
			t.string :userpassword

      t.timestamps
    end
  end
end
