class FirstChange2 < ActiveRecord::Migration
  def up
  end

  def down
  end
def change
    change_column :databases, :date_of_seizure, :date
  end
end
