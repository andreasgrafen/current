# settings
offsetY  = 0
baseSize = 32
colour   = '#2E3440'



# ======================================= #



# date stuff
date   = new Date()
day    = date.getDate()
month  = date.getMonth()
year   = date.getFullYear()
months = ['Jan', 'Feb', 'March', 'April', 'May', 'June', 'July', 'Aug', 'Sep', 'Okt', 'Nov', 'Dec']

# widget stuff
command: "date +'%H:%M'"
refreshFrequency: 60000



# create me
render: (output) -> """
  <div id="time">#{output}</div>
  <div id="date"></div>
"""


# update me
update: () ->
  document.getElementById("date").innerHTML = day + ' ' + months[month] + ' ' + year



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



    #time
      font-size: #{baseSize * 4}px

    #date
      font-size: #{baseSize}px



    #time::before
    #date::after

      position: absolute
      left: 50%

      width: 150px
      height: 1px

      background: #{colour}

      transform: translateX(-50%)
      content: ''


    #time::before
      top: -20px

    #date::after
      bottom: -15px

  """

)()
