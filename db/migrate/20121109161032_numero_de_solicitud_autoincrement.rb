class NumeroDeSolicitudAutoincrement < ActiveRecord::Migration
  def up
    remove_column :solicituds, :nsolicitud

    add_column :solicituds, :nsolicitud, :integer

    add_index :solicituds, :nsolicitud, :unique => true, :auto_increment => true
  end

  def down
  end
end
