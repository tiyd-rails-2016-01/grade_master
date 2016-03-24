desc "This task is called by the Heroku scheduler add-on"
task :weekly_reports => :environment do
  AssignmentGrade.send_reports
end
