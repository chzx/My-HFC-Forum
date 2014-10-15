class AddProfileColumns < ActiveRecord::Migration
  def change
    add_column :users, :professional_interests, :text

    add_column :users, :website_url, :string
    add_column :users, :github_url, :string
    add_column :users, :twitter_url, :string
    add_column :users, :skype, :string
  end
end
