class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :usuario, :limit => 10
      t.string :apepat, :limit => 20
      t.string :apemat, :limit => 20
      t.string :nombre, :limit => 25
      t.string :email, :limit => 50
      t.string :password, :limit => 20

      t.timestamps
    end
  end
end
