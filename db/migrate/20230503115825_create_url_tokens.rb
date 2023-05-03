class CreateUrlTokens < ActiveRecord::Migration[6.1]
  def change
    create_table :url_tokens do |t|
      t.string  :token, index: { unique: true }
      t.text    :url
      t.integer :url_visits_count, default: 0

      t.timestamps
    end
  end
end
