
/* Z-index of #mask must lower than #boxes .window */
#mask {
  position:absolute;
  z-index:9000;
  background-color:#000;
  display:none;
}
   
#boxes .window {
  position:absolute;
  width:440px;
  height:300px;
  display:none;
  z-index:9999;
  padding:15px 20px 20px 25px;
  top: 50px;
}
 
 
/* Customize your modal window here, you can add background image too */
#boxes #dialog {
  width:400px;
  height:500px;
  background-color: #fff;
}
