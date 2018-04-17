class AddFacilitiesToCampu < ActiveRecord::Migration[5.1]
  def change
    add_column :campus, :boys_hostel, :boolean
    add_column :campus, :girls_hostel, :boolean
    add_column :campus, :library, :boolean
    add_column :campus, :sports, :boolean
    add_column :campus, :gym, :boolean
    add_column :campus, :s_pool, :boolean
    add_column :campus, :p_ground, :boolean
    add_column :campus, :canteen, :boolean
    add_column :campus, :classroom, :boolean
    add_column :campus, :placement, :boolean
    add_column :campus, :club, :boolean
    add_column :campus, :h_centre, :boolean
    add_column :campus, :yoga, :boolean
    add_column :campus, :auditorium, :boolean
  end
end
