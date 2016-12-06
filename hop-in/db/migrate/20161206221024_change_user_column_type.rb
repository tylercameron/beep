class ChangeUserColumnType < ActiveRecord::Migration[5.0]
  def change

    reversible do |dir|
    	dir.up do
    		change_column :users, :date_of_birth, :datetime
    	end
    	dir.down do
    		change_column :users, :date_of_birth, :integer
    	end
    end
  end
end
