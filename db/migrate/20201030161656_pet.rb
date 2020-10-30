class Pet < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.column :name, :string
      t.column :age,  :integer
      t.column :type, :string
      t.column :breed, :string
      t.timestamps()
    end  
  end
end
