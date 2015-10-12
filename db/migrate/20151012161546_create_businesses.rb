class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.column :name, :string
      t.column :mailing_address, :string
      t.column :mailing_city, :string
      t.column :mailing_state, :string
      t.column :mailing_zip, :string
      t.column :street_address, :string
      t.column :street_city, :string
      t.column :street_state, :string
      t.column :street_zip, :string
      t.column :url, :string
      t.column :phone, :string
      t.column :fax, :string
      t.column :description, :string
      t.column :img, :string
      t.column :hours_of_operation, :string
      t.column :category_id, :integer, index: true

      t.timestamps
    end

    create_table :categories do |t|
      t.column :name, :string
      t.column :img, :string

      t.timestamps
    end
  end
end
