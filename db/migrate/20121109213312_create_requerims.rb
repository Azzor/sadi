class CreateRequerims < ActiveRecord::Migration
  def change
    create_table :requerims do |t|
      t.integer :nrequerim
      t.date :notif_on
      t.string :asunto, :limit => 100
      t.date :venc_on
      t.date :resp_on

      t.timestamps
    end
  end
end
