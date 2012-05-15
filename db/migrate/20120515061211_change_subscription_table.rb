class ChangeSubscriptionTable < ActiveRecord::Migration
  def up
    change_table :subscriptions do |t|

      t.remove :subscriber
      t.remove :subscribee

      t.integer :subscriber_id
      t.integer :subscribee_id

    end
  end

  def down
    change_table :subscriptions do |t|

      t.integer :subscriber
      t.integer :subscribee

      t.remove :subscriber_id
      t.remove :subscribee_id

    end
  end
end
