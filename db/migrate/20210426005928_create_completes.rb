class CreateCompletes < ActiveRecord::Migration[5.2]
  def change
    create_table :completes do |t|
      t.date :date

      t.timestamps
    end
  end
end
