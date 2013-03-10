class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :cliente, :limit => 10
      t.string :nombre, :Limit => 40
      t.integer :gruemp_id
      t.string :contacto, :limit => 40
      t.string :telefono, :limit => 20
      t.string :email, :limit => 60

      t.timestamps
    end
  end
end
