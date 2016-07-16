class CreateRoyals < ActiveRecord::Migration
  def change
    create_table :royals do |t|

      t.timestamps null: false
    end
  end
end
