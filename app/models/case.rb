class Case < ApplicationRecord
  def sort_case_numbers(historic_cases)
    states = [
      'Victoria',
      'Western Australia',
      'New South Wales',
      'Queensland',
      'South Australia',
      'Australian Capital Territory',
      'Northern Territory',
      'Tasmania'
    ]
    state_cases = {}
    states.each do |state|
      previous_total_cases = historic_cases[state]['dates'][(Date.today - 2).to_s]
      new_total_cases = historic_cases[state]['dates'][(Date.today - 1).to_s]
      if new_total_cases.nil?
        state_cases = '❌ No new data'
        break
      end
      state_cases[state] = new_total_cases - previous_total_cases
    end
    return if state_cases.empty?

    state_cases
  end

  def build_cases_string(state_cases)
    cases_string = "Cases announced on #{Date.today}\n\n"
    if state_cases.instance_of?(Hash)
      state_cases.each do |key, value|
        cases_string << "#{value} new cases in #{key}\n-----\n"
      end
    else
      cases_string = state_cases
    end
    cases_string
  end
end
