class AbobsController < ApplicationController

  hobo_model_controller

  auto_actions :all
  
  auto_actions_for :thing, [:index, :create, :new]

end
