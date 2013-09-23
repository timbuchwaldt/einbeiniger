class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.datetime :date

      t.timestamps
    end
  end
end
