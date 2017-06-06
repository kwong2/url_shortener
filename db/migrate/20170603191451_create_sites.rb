class CreateSites < ActiveRecord::Migration[5.1]
  def change
    create_table :sites do |t|
      t.string :url_short
      t.string :url_long

      t.timestamps
    end
  end
end
