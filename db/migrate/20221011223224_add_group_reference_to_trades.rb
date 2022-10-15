class AddGroupReferenceToTrades < ActiveRecord::Migration[7.0]
  def change
    add_reference :trades, :group, null: false, foreign_key: true
  end
end
