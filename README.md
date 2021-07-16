# Australia COVID 19 Case Tracker

## Purpose 
To provide data on the latest Covid-19 cases around Australia. 

## About
This is a backend API with no view.  
The data is called from the Covid 19 API (see references).  
This is still in development, the plan is to set up a (possibly cron job) task to automate sending the text message once a day. 

## References
COVID 19 API
https://github.com/M-Media-Group/Covid-19-API/

ENV
https://github.com/bkeepers/dotenv

Rails API
https://guides.rubyonrails.org/api_app.html

Twilio
https://www.twilio.com/docs/api

Whenever (scheduled Rake task)
https://github.com/javan/whenever
