namespace :db do
  desc "Sum and update user karmatotal"
  task :update_user_karmatotal => :environment do
    counter  = 0
    User.all.each do |user|
      counter = counter + 1
      p counter if counter % 100 == 0
      user.update_attribute(:karmatotal, user.karma_points.sum(:value))
    end
  end
end
