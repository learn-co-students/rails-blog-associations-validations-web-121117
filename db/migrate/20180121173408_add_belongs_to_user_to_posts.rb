class AddBelongsToUserToPosts < ActiveRecord::Migration
  def change
    add_belongs_to :posts, :user
  end
end
