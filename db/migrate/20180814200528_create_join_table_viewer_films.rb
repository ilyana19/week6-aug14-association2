class CreateJoinTableViewerFilms < ActiveRecord::Migration[5.2]
  def change
    create_join_table :viewers, :films do |t|
      t.index [:viewer_id, :film_id]
      # t.index [:film_id, :viewer_id]
    end
  end
end
