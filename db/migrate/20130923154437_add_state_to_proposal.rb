class AddStateToProposal < ActiveRecord::Migration
  def change
    add_column :proposals, :state, :string, default: "added"
  end
end