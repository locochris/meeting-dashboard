current_valuation = 0

require 'chris_robin'
Dashing.scheduler.every '10s' do
  

  # curl -X GET https://api.robinpowered.com/v1.0/locations/3502/spaces -H "Authorization: Access-Token l2CWtLjIh57qBj38gjVhkQuHEVX9MSbm8Ozxk4qWmK22KwevfUpMuBKBCQhBFI3o6S1r4toWFC6GjPCZMPudEh1SGRqc7CqjKGHA0GbuMwXthlI1fVXd1KRuJ0McJ0nh"
  #response = Faraday.get 'https://api.robinpowered.com/v1.0/locations/3502/spaces -H "Authorization: Access-Token l2CWtLjIh57qBj38gjVhkQuHEVX9MSbm8Ozxk4qWmK22KwevfUpMuBKBCQhBFI3o6S1r4toWFC6GjPCZMPudEh1SGRqc7CqjKGHA0GbuMwXthlI1fVXd1KRuJ0McJ0nh"'
  #begin
  #  dubai = Faraday.new(:url => 'https://api.robinpowered.com/v1.0/locations/spaces/14260/events') do |faraday|
  #    faraday.headers['Authorization'] = 'Access-Token l2CWtLjIh57qBj38gjVhkQuHEVX9MSbm8Ozxk4qWmK22KwevfUpMuBKBCQhBFI3o6S1r4toWFC6GjPCZMPudEh1SGRqc7CqjKGHA0GbuMwXthlI1fVXd1KRuJ0McJ0nh'
  #end
  #end
  #dubai_response = dubai.get
  #debugger
  
  puts "dashing"
  sometext = "#{Time.now.to_i}"

  busy_spaces = FreeBusy.get_busy
  puts busy_spaces
  


  Dashing.send_event('melbourne', { text: busy_spaces["Melbourne"]  })
  Dashing.send_event('sanfrancisco', { text: busy_spaces["San Francisco"] })
  Dashing.send_event('dubai', { text: busy_spaces["Dubai"]})
  Dashing.send_event('vizzini', { text: busy_spaces["Vizzini"]})


end
