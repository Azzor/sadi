class IndexUniqueUsuario < ActiveRecord::Migration
  def up
    add_index :usuarios, :usuario, :unique => true
  end

  def down
  end
end
