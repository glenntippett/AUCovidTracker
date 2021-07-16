class TwilioApi
  def txt_case_numbers(cases_string, phonebook)
    account_sid = ENV['ACCOUNT_SID']
    auth_token = ENV['AUTH_TOKEN']

    phonebook.each do |contact|
      begin
        @client = Twilio::REST::Client.new account_sid, auth_token
        @client.messages.create(
          body: cases_string,
          to: contact.number,
          from: ENV['MY_NUM']
        )
        puts "✅ Message to #{contact.name} sent"
      rescue Twilio::REST::TwilioError => e
        puts "❌ Message to #{contact.name} failed"
        puts e.message
      end
    end
  end
end
