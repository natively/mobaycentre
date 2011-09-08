if defined?(User)
  User.all.each do |user|
    if user.plugins.where(:name => 'advertisements').blank?
      user.plugins.create(:name => 'advertisements',
                          :position => (user.plugins.maximum(:position) || -1) +1)
    end
  end
end

if defined?(Page)
  page = Page.create(
    :title => 'Advertisements',
    :link_url => '/advertisements',
    :deletable => false,
    :position => ((Page.maximum(:position, :conditions => {:parent_id => nil}) || -1)+1),
    :menu_match => '^/advertisements(\/|\/.+?|)$'
  )
  Page.default_parts.each do |default_page_part|
    page.parts.create(:title => default_page_part, :body => nil)
  end
end