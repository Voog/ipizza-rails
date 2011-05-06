class CreateIpizzaNotifications < ActiveRecord::Migration
  
  def self.up
    create_table :ipizza_notifications do |t|
      t.timestamps
    end
     
    # add_index :ipizza_notifications, [:vk_date]
  end

  def self.down
    drop_table :ipizza_notifications
  end
end
