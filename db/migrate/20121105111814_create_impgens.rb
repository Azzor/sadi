class CreateImpgens < ActiveRecord::Migration
  def change
    create_table :impgens do |t|
      t.string :impgen, :limit => 20

      t.timestamps
    end
  end
end
