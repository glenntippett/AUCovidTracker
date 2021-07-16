require 'twilio-ruby'

class CasesController < ApplicationController
  def new(country = 'Australia')
    url = "https://covid-api.mmediagroup.fr/v1/history?country=#{country}&status=confirmed"
    covid_api = CovidApi.new
    historic_cases = covid_api.call_api(url)
    new_case = Case.new
    state_cases = new_case.sort_case_numbers(historic_cases)
    cases_string = new_case.build_cases_string(state_cases)
    if Report.last.cases == cases_string
      puts '⚠️ Report exists - no text sent ⚠️'
    else
      Report.create(cases: cases_string)
      phonebook = Contact.all
      twilio = TwilioApi.new
      twilio.txt_case_numbers(cases_string, phonebook) if state_cases.instance_of?(Hash)
    end
  end
end
