class ThingsController < ApplicationController

  hobo_model_controller

  auto_actions :all
  
  auto_actions_for :abobs, [:new, :create]

end
