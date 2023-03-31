class RemoveContentFromClaims < ActiveRecord::Migration[7.0]
  def change
    remove_column :claims, :content, :string
  end
end
