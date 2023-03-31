class CreateClaims < ActiveRecord::Migration[7.0]
  def change
    create_table :claims do |t|
      t.string :email
      t.string :content

      t.timestamps
    end
  end
end
