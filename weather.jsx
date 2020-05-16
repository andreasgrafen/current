const offsetY  = 320
const baseSize = 16
const colour   = '#C5C8C6'

const location = 'Leipzig'



export const command = `curl -s wttr.in/${location}?format="%l:+%C+%t"`
export const refreshFrequency = 300000 // ms

export const render = ({ output }) => (
  <div id="weather">{output}</div>
)



export const className = `

  postion absolute;
  left: 50%;
  top: 50%;

  font-family: Josefin Sans, Helvetica Neue;
  font-weight: 900;
  font-size: ${baseSize}px;
  text-align: center;
  line-height: .8;
  color: ${colour};

  transform: translate(-50%, calc(-50% + ${offsetY}px));

`
