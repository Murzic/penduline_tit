class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.time :date
      t.float :hours
      t.references :project
      t.references :user

      t.timestamps
    end
  end
end
