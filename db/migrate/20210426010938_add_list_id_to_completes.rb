class AddListIdToCompletes < ActiveRecord::Migration[5.2]
  def change
    add_column :completes, :list_id, :integer
  end
end
