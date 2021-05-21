namespace :gamerooms do
  desc "Delete records older than 5 days"
  task delete_5_days_old: :environment do
    Gameroom.where(['created_at < ?', 5.days.ago]).destroy_all
  end

  desc "Delete records older than 1 days"
  task delete_1_day_old: :environment do
    Gameroom.where(['created_at < ?', 1.day.ago]).destroy_all
  end

end
