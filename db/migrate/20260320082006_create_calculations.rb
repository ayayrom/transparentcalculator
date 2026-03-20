class CreateCalculations < ActiveRecord::Migration[8.1]
  def change
    create_table :calculations do |t|
      t.text :equation
      t.text :solution
      t.jsonb :tree

      t.timestamps
    end
  end
end
