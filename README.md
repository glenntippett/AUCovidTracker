# Australia COVID 19 Case Tracker

## Purpose 
To provide data on the latest Covid-19 cases around Australia. 

## About
This is a backend API with no view.  
The data is called from the Covid 19 API (see references).  
A rake task is scheduler on Heroku to call the API each hour, a text is only sent if there is new data from the API call.
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
