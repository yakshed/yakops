node /pheros\.yakshed.*/ {
  include 'ufw'
  include 'yakshed'
  include 'workshop'
}

node /poosh.yakshed.*/ {
  include 'ufw'
  include 'yakshed'
  include 'webserver::stats'
  include 'webserver::baschtdotcom'
  include 'webserver::isiclouddowndotcom'
}

node /kendrax.yakshed.*/ {
  include 'ufw'
  include 'yakshed'
}

node /peladon.yakshed.*/ {
  include 'ufw'
  include 'yakshed'
  include 'prosody'
}
