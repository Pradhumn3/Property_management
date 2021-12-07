class DeleteColumnFromProperties < ActiveRecord::Migration[6.1]
  def change
    remove_column :properties, :string
  end
end
