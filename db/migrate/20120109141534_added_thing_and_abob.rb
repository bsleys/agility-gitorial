class HoboMigration2 < ActiveRecord::Migration
  def self.up
    create_table :things do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :abobs do |t|
      t.string   :name
      t.string   :name2
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :thing_id
    end
    add_index :abobs, [:thing_id]
  end

  def self.down
    drop_table :things
    drop_table :abobs
  end
end
