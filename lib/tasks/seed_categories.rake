namespace :db do
  desc "Load categories into database"
  task :seed_categories => :environment do
    categories = ["community", "housing", "jobs", "personals", "for sale", "services", "gigs"]

    categories.each do |c_name|
      category = Category.new
      category.name = c_name
      category.save
    end
  end
end


