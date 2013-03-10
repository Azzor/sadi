class IndexUniqueCliente < ActiveRecord::Migration
  def up
    add_index :clientes, :cliente, :unique => true
  end

  def down
  end
end
