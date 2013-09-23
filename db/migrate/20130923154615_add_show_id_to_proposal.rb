class AddShowIdToProposal < ActiveRecord::Migration
  def change
    add_column :proposals, :show_id, :integer
  end
end
