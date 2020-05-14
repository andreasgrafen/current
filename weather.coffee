# settings
offsetY  = -100
baseSize = 16
colour   = '#2E3440'

location = '## YOUR LOCATION ##'



# ======================================= #



# widget stuff
command: "curl -s wttr.in/#{location}?format=\"%l:+%C+%t\""
refreshFrequency: 300000



# create me
render: (output) -> """
  <div id="weather">#{output}</div>
"""



# make me pretty
style: (->

  return """

    postion absolute
    left: 50%
    top: 50%

    font-family: Josefin Sans, Helvetica Neue
    font-weight: 900
    text-align: center
    line-height: .8
    color: #{colour}

    transform: translate(-50%, calc(-50% + #{offsetY}px))



    #weather
      font-size: #{baseSize}px

  """

)()
