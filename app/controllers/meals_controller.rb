class MealsController < ApplicationController
  def feed
    @meals = Meal.all
  end
end
