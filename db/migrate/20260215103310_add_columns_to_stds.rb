class AddColumnsToStds < ActiveRecord::Migration[8.1]
  def change
    add_column :stds, :age, :integer
    add_column :stds, :dept, :string
    add_column :stds, :email, :string
    add_column :stds, :phone, :string
  end
end
