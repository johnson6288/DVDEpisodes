class CreateEpisodes < ActiveRecord::Migration[5.0]
  def change
    create_table :episodes do |t|
      t.string :eptitle
      t.string :show
      t.string :media
      t.string :disctitle

      t.timestamps
    end
  end
end
