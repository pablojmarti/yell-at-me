send_email(){

  # send BODY to email address with subject
  echo $2 | mail -s $1 $EMAIL_ADDR

}

