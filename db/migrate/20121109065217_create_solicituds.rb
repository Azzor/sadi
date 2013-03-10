class CreateSolicituds < ActiveRecord::Migration
  def change
    create_table :solicituds do |t|
      t.string :cliente, :limit => 10
      t.string :impesp, :limit => 20
      t.date :per1_on
      t.date :per2_on
      t.decimal :importe, :precision => 12, :scale => 2
      t.integer :tramite_id
      t.date :ingreso_on
      t.date :devest_on
      t.integer :usu_socio
      t.integer :usu_gerente
      t.integer :usu_senior
      t.integer :usu_junior

      t.timestamps
    end
  end
end
