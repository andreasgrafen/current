import { css } from "uebersicht";
const offsetY = 0;
const baseSize = 32;
const colour = "#2E3440";

let date = new Date();
let day = date.getDate();
let month = date.getMonth();
let year = date.getFullYear();
let months = [
  "Jan",
  "Feb",
  "March",
  "April",
  "May",
  "June",
  "July",
  "Aug",
  "Sep",
  "Okt",
  "Nov",
  "Dec",
];

export const command = "date +'%H:%M'";
export const refreshFrequency = 10000; // ms

export const render = ({ output }) => (
  <div>
    <div className={line} style={{ bottom: "-15px" }}></div>
    <div className={time}>{output}</div>
    <div id='date'>
      {months[month]},{day},{year}
    </div>
    <div className={line} style={{ top: "-20px" }}></div>
  </div>
);

const time = css({
  fontSize: `${baseSize * 4}px`,
});

const line = css({
  position: "absolute",
  left: "50%",
  width: "150px",
  height: "1px",

  background: `${colour}`,

  transform: "translateX(-50%)",
  content: `''`,
});
export const className = `

  postion absolute;
  left: 50%;
  top: 40%;

  font-family: Josefin Sans, Helvetica Neue;
  font-weight: 900;
  font-size: ${baseSize}px;
  text-align: center;
  line-height: .8;
  color: ${colour};

  transform: translate(-50%, calc(-50% + ${offsetY}px))

  ;`;
