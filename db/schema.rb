# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110125234650) do

  create_table "ingredient_batches", :force => true do |t|
    t.integer  "ingredient_id"
    t.integer  "order_id"
    t.integer  "quantity_delivered"
    t.integer  "quantity_delivered_unit_id"
    t.decimal  "purchase_cost"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "quantity_in_stock"
    t.integer  "quantity_in_stock_unit_id"
  end

  create_table "ingredients", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "measurement_unit_categories", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "measurement_units", :force => true do |t|
    t.integer  "measurement_unit_category_id"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.integer  "supplier_id"
    t.datetime "delivered_at"
    t.decimal  "freight_cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipe_ingredients", :force => true do |t|
    t.integer  "recipe_id"
    t.integer  "ingredient_id"
    t.integer  "quantity"
    t.integer  "quantity_unit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", :force => true do |t|
    t.string   "title"
    t.integer  "sellable_yield"
    t.integer  "sellable_yield_unit_id"
    t.integer  "waste_yield"
    t.integer  "waste_yield_unit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
  end

end
