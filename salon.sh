#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=salon -t -c "
MAIN_MENU(){
	if [[ $1 ]]
	then
		echo -e "\n$1"
	else
		echo "Welcome to My Salon, how can I help you?"
	fi
	SERVICES=$($PSQL "select * from services")
	
	echo "$SERVICES" | while read SERVICE_ID BAR SERVICE_NAME
do
	echo "$SERVICE_ID) $SERVICE_NAME"
done
SELECT_SERVICE
}
SELECT_SERVICE(){
	
	read SERVICE_ID_SELECTED
	SERVICE_NAME=$($PSQL "select name from services where service_id = $SERVICE_ID_SELECTED")
	if [[ -z $SERVICE_NAME ]]
	then
		MAIN_MENU "I could not find that service. What would you like today?"
	else
		echo -e "\nWhat's your phone number?"
		read CUSTOMER_PHONE
		PHONE_RESULT=$($PSQL "select phone from customers where phone='$CUSTOMER_PHONE'")
		if [[ -z $PHONE_RESULT ]]
		then
			echo -e "\nI don't have a record for that phone number, what's your name?"
			read CUSTOMER_NAME
			echo -e "\nWhat time would you like your$SERVICE_NAME, $CUSTOMER_NAME?"
		  read SERVICE_TIME
			INSERT_PHONE_RESULT=$($PSQL "insert into customers(phone,name) values ('$CUSTOMER_PHONE', '$CUSTOMER_NAME') returning customer_id" -q -A)
			INSERT_APPOINTMENT_RESULT=$($PSQL "insert into appointments(time, customer_id, service_id) values('$SERVICE_TIME', $INSERT_PHONE_RESULT, $SERVICE_ID_SELECTED)")
			
			echo -e "\nI have put you down for a$SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
		else
			echo -e "\nWhat time would you like your$SERVICE_NAME?"
		  read SERVICE_TIME
			echo "$($PSQL "select customer_id, name from customers where phone='$CUSTOMER_PHONE'")"
			read -r CUSTOMER_ID BAR CUSTOMER_NAME <<< $($PSQL "select customer_id, name from customers where phone='$CUSTOMER_PHONE'")
			#INSERT_APPOINTMENT_RESULT=$($PSQL "insert into appointments(time, customer_id, service_id) values('$SERVICE_TIME', $CUSTOMER_ID, $SERVICE_ID_SELECTED)")
			echo -e "\nI have put you down for a$SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
		fi
	fi
}

MAIN_MENU
