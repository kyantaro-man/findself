class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :cover_image,    default: 'no-profile.png'
      t.string :profile_image,  default: 'no-profile.png'
      t.string :catch_copy,     default: 'キャッチコピーを更新してください'
      t.text :introduction
      t.string :goal,           default: '目標を更新してください'
      t.text :career
      t.string :related_title,  default: '関連タイトルを更新してください'
      t.string :related_link,   default: '関連リンクを更新してください'
      t.string :attached_file,  default: '添付ファイルを更新してください'
      t.references :user

      t.timestamps
    end
  end
end
