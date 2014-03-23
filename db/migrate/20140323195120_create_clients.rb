class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :code
      t.datetime :birth_date
      t.datetime :register_date
      t.string :register_location_name
      t.boolean :new
      t.string :gender
      t.text :how_did_you_hear
      t.boolean :veterancy
      t.string :neighborhood
      t.boolean :hiv_screen
      t.boolean :hiv_pos
      t.boolean :hep_b_screen
      t.boolean :hep_b_pos
      t.boolean :hep_c_screen
      t.boolean :hep_c_pos

      t.timestamps
    end
  end
end
