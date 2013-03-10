class CreateTramites < ActiveRecord::Migration
  def change
    create_table :tramites do |t|
      t.string :tramite, :limit => 20
      t.string :descripc, :limit => 40
      t.integer :plazo

      t.timestamps
    end
  end
end
