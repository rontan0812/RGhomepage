class AddContentToClaims < ActiveRecord::Migration[7.0]
  def change
    add_column :claims, :content, :text
  end
end
