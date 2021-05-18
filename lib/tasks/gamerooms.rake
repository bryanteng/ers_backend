namespace :gamerooms do
  desc "Delete records older than 5 days"
  task delete_5_days_old: :environment do
    Gameroom.where(['created_at < ?', 5.days.ago]).destroy_all
  end

end
