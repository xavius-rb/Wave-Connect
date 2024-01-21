class CreateServices < ActiveRecord::Migration[7.1]
  def change
    create_table :services do |t|
      t.string :name, null: false
      t.string :technology
      t.string :repository_url
      t.string :uuid, null: false

      t.timestamps
    end
  end
end
