class AddYoutubeUrlToSchoolVideos < ActiveRecord::Migration[5.1]
  def change
    add_column :school_videos, :youtube_url, :string
  end
end
