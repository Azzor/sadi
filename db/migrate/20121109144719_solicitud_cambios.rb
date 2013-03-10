class SolicitudCambios < ActiveRecord::Migration
  def up
    add_index :tramites, :tramite, :unique => true
    add_index :impesps, :impesp, :unique => true

    change_column :solicituds, :usu_socio, :string
    change_column :solicituds, :usu_gerente, :string
    change_column :solicituds, :usu_senior, :string
    change_column :solicituds, :usu_junior, :string

    add_column :solicituds, :honorarios, :decimal
    add_column :solicituds, :factura, :string
    add_column :solicituds, :factura_on, :date
  end

  def down
  end
end
