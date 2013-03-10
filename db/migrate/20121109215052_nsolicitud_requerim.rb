class NsolicitudRequerim < ActiveRecord::Migration
  def up
    add_column :requerims, :solicitud_id, :integer

    add_index :requerims, :solicitud_id
  end

  def down
  end
end
