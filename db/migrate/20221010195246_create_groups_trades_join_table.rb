class CreateGroupsTradesJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_table :groups_trades do |t|
      t.references :group, null: false, foreign_key: true
      t.references :trade, null: false, foreign_key: true
    end
  end
end
