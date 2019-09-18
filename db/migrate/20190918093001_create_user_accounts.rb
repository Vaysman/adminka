class CreateUserAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :user_accounts do |t|
      t.email "string"
      t.integer "role", default: 0
      t.timestamps
    end
  end
end
