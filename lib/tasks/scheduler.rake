desc 'This task is called by the Heroku scheduler add-on'
task update_case_report: :environment do
  puts 'Updating reports...'
  cases_controller = CasesController.new
  cases_controller.new
  puts 'done.'
end
