class CreateConnections < ActiveRecord::Migration[7.0]
  def change
    create_table :connections do |t|
      t.string :ip_address
      t.integer :status
      t.references :user, null: false, foreign_key: true
      t.datetime :activated_at
      t.integer :activated_by

      t.timestamps
    end
  end
end
