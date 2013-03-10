class AgregaCampoCliente < ActiveRecord::Migration
  def up
    add_column :solicituds, :cliente, :string, :limit => 10
  end

  def down
    drop_column :solicituds, :cliente
  end
end
