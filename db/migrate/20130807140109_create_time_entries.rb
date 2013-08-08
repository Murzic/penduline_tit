class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.time :date
      t.float :hours

      t.timestamps
    end
  end
end
