class AddUserIdToSnap < ActiveRecord::Migration
  def change
    add_reference :snaps, :user, index: true
  end
end
