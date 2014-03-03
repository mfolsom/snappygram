class CreateSnaps < ActiveRecord::Migration
  def change
    create_table :snaps do |t|
      t.text :description
      t.string :snap_url
      t.date :date_taken

      t.timestamps
    end
  end
end
