class CreateGrupos < ActiveRecord::Migration
  def change
    create_table :grupos do |t|
      t.string :nombre,     :limit => 40

      t.timestamps
    end
  end
end
