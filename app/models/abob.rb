class Abob < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name  :string, :required
    name2 :string, :required
    timestamps
  end

  belongs_to :thing
  
  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
