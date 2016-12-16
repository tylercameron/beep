class AddImage < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
			dir.up do
        add_column :vehicles, :image, :string
			end
			dir.down do
        remove_column :vehicles, :image
			end
		end
  end
end
