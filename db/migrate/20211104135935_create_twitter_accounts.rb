class CreateTwitterAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :twitter_accounts do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.string :username
      t.string :avatar
      t.string :token
      t.string :secret

      t.timestamps
    end
  end
end
