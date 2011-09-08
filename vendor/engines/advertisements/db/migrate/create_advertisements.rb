class CreateAdvertisements < ActiveRecord::Migration

  def self.up
    create_table :advertisements do |t|
      t.string :title
      t.string :caption
      t.string :link_url
      t.integer :picture_id
      t.integer :position

      t.timestamps
    end

    add_index :advertisements, :id

    load(Rails.root.join('db', 'seeds', 'advertisements.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "advertisements"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/advertisements"})
    end

    drop_table :advertisements
  end

end
