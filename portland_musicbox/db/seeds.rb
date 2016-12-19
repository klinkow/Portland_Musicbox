require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


labels = ['Kill Rock Stars', 'Tender Loving Empire', 'Good Cheer', 'Golden Brown']
founded = [1991, 2005, 2014, 2016]
labels.each do |label|
   Label.create(name: label, est_date: founded.index(labels.index(label)))
end
