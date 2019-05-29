class AddTableWithEnum < ActiveRecord::Migration[5.2]
  def change
    execute "create type conditions as enum ('sunny', 'rainy')"

    create_table :afternoons do |t|
      t.column :weather, :conditions, null: false, default: "sunny"
    end
  end
end
