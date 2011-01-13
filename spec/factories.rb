Factory.define :supplier do |supplier|
	supplier.name					"ABC Ltd"
end

Factory.define :order do |order|
	order.delivered_at				DateTime.now
	order.freight_cost				10.00
	order.association :supplier, :factory => :supplier
end

Factory.define :ingredient_batch do |ingredient_batch|
	ingredient_batch.quantity		10
	ingredient_batch.purchase_cost	5.00
	ingredient_batch.association :quantity_unit, :factory => :measurement_unit
	ingredient_batch.association :ingredient, :factory => :ingredient
	ingredient_batch.association :order, :factory => :order
end

Factory.define :user do |user|
	user.name						"Bob Loblaw"
	user.email						"abc@example.com"
end

Factory.define :measurement_unit_category do |measurement_unit_category|
	measurement_unit_category.title	"Weight"
end

Factory.define :measurement_unit do |measurement_unit|
	measurement_unit.title			"Grams"
	measurement_unit.association :measurement_unit_category, :factory => :measurement_unit_category
end

Factory.define :ingredient do |ingredient|
	ingredient.title				"Olive oil"
end

Factory.define :recipe_ingredient do |recipe_ingredient|
	recipe_ingredient.quantity		10
	recipe_ingredient.association :quantity_unit, :factory => :measurement_unit
	recipe_ingredient.association :ingredient, :factory => :ingredient
	recipe_ingredient.association :recipe, :factory => :recipe
end

Factory.define :recipe do |recipe|
	recipe.title					"Rose & geranium soap"
	recipe.waste_yield				1
	recipe.sellable_yield			50
	recipe.association :sellable_yield_unit, :factory => :measurement_unit
	recipe.association :waste_yield_unit, :factory => :measurement_unit
end
	

