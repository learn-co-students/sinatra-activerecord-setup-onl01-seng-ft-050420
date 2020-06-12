class CreateDogs < ActiveRecord::Migration[6.0]
  def up
    create_table :dogs |t|
    t.string :name
    t.string :breed
  end

  def down
    drop_table :dogs
  end
end
