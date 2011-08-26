Given /^I have no advertisements$/ do
  Advertisement.delete_all
end

Given /^I (only )?have advertisements titled "?([^\"]*)"?$/ do |only, titles|
  Advertisement.delete_all if only
  titles.split(', ').each do |title|
    Advertisement.create(:title => title)
  end
end

Then /^I should have ([0-9]+) advertisements?$/ do |count|
  Advertisement.count.should == count.to_i
end
