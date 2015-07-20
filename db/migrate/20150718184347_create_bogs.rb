class CreateBogs < ActiveRecord::Migration
  def change
    create_table :bogs do |t|
      t.string :index

      t.timestamps null: false
    end
  end
end
