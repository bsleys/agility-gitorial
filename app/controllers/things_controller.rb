class ThingsController < ApplicationController

  hobo_model_controller

  auto_actions :all

  auto_actions_for :abobs, [:new, :create]
  def create
    hobo_create do
      if request.xhr?
        self.this = Abob.new
      end
    end
  end
end
