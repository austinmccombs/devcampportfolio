class AddLinksToPortfolios < ActiveRecord::Migration[5.1]
  def change
    add_column :portfolios, :link, :string
  end
end
