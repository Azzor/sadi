class CambiaNombreCampoSolicitud < ActiveRecord::Migration
  def up
    remove_column :solicituds, :cliente
    add_column :solicituds, :cliente_id, :integer
  end

  def down
    remove_column :solicituds, :cliente_id
    add_column :solicituds, :cliente, :string
  end
end
