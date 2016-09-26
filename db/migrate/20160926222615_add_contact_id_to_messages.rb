class AddContactIdToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :contact_id, :string
  end
end
