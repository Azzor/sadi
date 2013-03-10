class SolicitudCambiaTramite < ActiveRecord::Migration
  def up
    add_column :solicituds, :tramite, :string
    remove_column :solicituds, :tramite_id
  end

  def down
  end
end
