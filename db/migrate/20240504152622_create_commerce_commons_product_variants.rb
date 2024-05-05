class CreateCommerceCommonsProductVariants < ActiveRecord::Migration[7.1]
  def change
    create_table :commerce_commons_product_variants do |t|
      t.references :product, foreign_key: { to_table: :commerce_commons_products }, index: true

      t.string :inventory_basis_gid
      t.string :fulfillment_basis_gid

      t.json :options, null: false, default: "{}"
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
