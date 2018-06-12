class CreateShortUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :short_urls do |t|
      t.integer :user_id
      t.string :shortened_url
      t.string :actual_url

      t.timestamps
    end
  end
end
