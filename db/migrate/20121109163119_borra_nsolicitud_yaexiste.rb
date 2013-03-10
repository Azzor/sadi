class BorraNsolicitudYaexiste < ActiveRecord::Migration
  def up
    remove_column :solicituds, :nsolicitud
  end

  def down
  end
end
