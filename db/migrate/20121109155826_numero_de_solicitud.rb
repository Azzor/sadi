class NumeroDeSolicitud < ActiveRecord::Migration
  def up
    add_column :solicituds, :nsolicitud, :integer

    add_index :solicituds, :nsolicitud, :unique => true
  end

  def down
  end
end
