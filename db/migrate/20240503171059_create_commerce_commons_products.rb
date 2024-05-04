class CreateCommerceCommonsProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :commerce_commons_products do |t|
      t.text :title
      t.text :handle, index: { unique: true }
      t.text :description

      t.timestamps
    end
  end
end
