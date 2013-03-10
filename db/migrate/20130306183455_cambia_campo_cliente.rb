class CambiaCampoCliente < ActiveRecord::Migration
  def up
    rename_column :clientes, :gruemp_id, :grupo_id
  end

  def down
    rename_column :clientes, :grupo_id, :gruemp_id
  end
end
