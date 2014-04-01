class ChangePostsDescription < ActiveRecord::Migration
  def change
    reversible do |dir|
      change_table :posts do |t|
        dir.up   { t.change :description, :text }
        dir.down { t.change :description, :text }
      end
    end
  end
end
