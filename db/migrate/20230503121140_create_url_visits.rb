class CreateUrlVisits < ActiveRecord::Migration[6.1]
  def change
    create_table :url_visits do |t|
      t.references :url_token, null: false, foreign_key: true
      t.string :ip_address

      t.timestamps
    end
  end
end
