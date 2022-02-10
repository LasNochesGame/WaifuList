class AddLinkToWaifus < ActiveRecord::Migration[7.0]
  def change
    add_column :waifus, :link, :string
  end
end
