class CreateImpesps < ActiveRecord::Migration
  def change

    create_table :impesps do |t|
      t.string :impesp, :limit => 20
      t.string :impgen, :limit => 20
      t.integer :impgen_id

      t.timestamps
    end
  end
end
