class AddAvatarsToUsers < ActiveRecord::Migration[5.2]
 def self.up
  change_table :users do |t|
    t.attachment :users, :avatar 
  end
end

  def self.down
    drop_attached_file :users, :avatar 
  end
end
