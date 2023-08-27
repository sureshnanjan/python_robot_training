*** Settings ***
Documentation    Suite description
Library     OperatingSystem
Library     Collections
Library     String
Library     JSON
Library     JSONLibrary
Library     RequestsLibrary

*** Variables ***
#Url
${Restfull_Booking_url}                      https://restful-booker.herokuapp.com

#TestData path
${header2}=	                	            ./TestData/header.json
${create_booking_data}=	    	            ./TestData/createbooking.json
${token_data}=                              ./TestData/token.json
${update_booking_data}=                     ./TestData/updatebooking.json
${partial_update_booking_data}=             ./TestData/partialupdatebooking.json

#Booking Path
${booking_ids_path}                          /booking
${single_booking_id_path}                    /booking/33
${single_booking_wrong_id_path}              /booking/000
${token_path}                                /auth
${delete_booking_id_path}                    /booking/2661

#Variables
${success}                                                  200
${badReq}                                                   404
${forbidden}                                                403
${created}                                                  201

${header}   Set Global Variable ${empty}
*** Keywords ***
#Common
Fetch The Value from Response
    [Arguments]     ${response}    ${tag}
    ${reponse}=  Convert To String      ${response.content}
    ${reponse}=  Convert String to json     ${reponse}
    ${Getval}=  Get Value From JSON     ${reponse}      ${tag}
    Set Global Variable    ${Getval}

System set Header Details
    ${header}=  Load JSON From File  ${header2}
    Set Global Variable    ${header}

#Get BookingId's
System sets GET Request for Booking Ids
    Create Session    session   ${Restfull_Booking_url}     disable_warnings=1
    ${endpoint}     Set Variable    ${booking_ids_path}
    ${response}     GET On Session  session     ${endpoint}
    Set Global Variable    ${response}

Validate Status code Get Booking Ids response
    System sets GET Request for Booking Ids
    ${content}=     Convert To String    ${response.status_code}
    Should Be Equal    ${content}   ${success}

#Get Single Booking Id
System sets GET Request for Single Booking Id
    Create Session    session   ${Restfull_Booking_url}     disable_warnings=1
    ${endpoint}     Set Variable    ${single_booking_id_path}
    ${response}     GET On Session  session     ${endpoint}
    Set Global Variable    ${response}

Validate Status code Get Single Booking Id response
    System sets GET Request for Single Booking Id
    ${content}=     Convert To String    ${response.status_code}
    Should Be Equal    ${content}   ${success}

#Get Single Booking With Wrong Id
System sets GET Request for Single Booking Wrong Id
    Create Session    session   ${Restfull_Booking_url}     disable_warnings=1
    ${endpoint}     Set Variable    ${single_booking_wrong_id_path}
    ${response}     GET On Session  session     ${endpoint}
    Set Global Variable    ${response}

Validate Status code Get Single Booking Wrong Id response
    System sets GET Request for Single Booking Wrong Id
    ${content}=     Convert To String    ${response.status_code}
    Should Be Equal    ${content}   ${badReq}

#Create Booking
System sets POST Request for Create Booking
    Create Session    session   ${Restfull_Booking_url}     disable_warnings=1
    ${endpoint}     Set Variable    ${booking_ids_path}
    ${body}=  Load JSON From File     ${create_booking_data}
    Set Global Variable    ${body}
    ${response}     POST Request  session     /booking    data=${body}     headers=${header}
    Set Global Variable    ${response}

Validate Create booking response
    System sets POST Request for Create Booking
    ${content}=     Convert To String    ${response.text}
    Should Contain    ${content}   Piyush

#Token
System sets token for requests
    Create Session    session   ${Restfull_Booking_url}     disable_warnings=1
    ${endpoint}     Set Variable    ${token_path}
    ${1}=  create dictionary    username=admin  password=password123
    Set Global Variable    ${1}
    ${response}     POST Request  session     ${endpoint}    data=${1}     headers=${header}
    Set Global Variable    ${response}

    ${response_text}=   Set Variable    ${response.text}
    ${token}=     Evaluate    json.loads('''${response_text}''')['token']
    Set Global Variable    ${token}

#Update Booking

System sets Token in Header and Sends Put Request for Update Booking
    System sets token for requests
    Create Session    session   ${Restfull_Booking_url}     disable_warnings=1
    ${endpoint}     Set Variable    ${single_booking_id_path}
    ${body}=  Load JSON From File     ${update_booking_data}
    ${header1}=   create dictionary  Content-Type=application/json  cookie=token=${token}
    Set Global Variable    ${header1}
    ${response}     PUT Request  session     ${endpoint}    data=${body}     headers=${header1}
    Set Global Variable    ${response}

Validate update booking response
    System sets Token in Header and Sends Put Request for Update Booking
    ${content}=     Convert To String    ${response.text}
    Should Contain    ${content}   James

#update booking without token
System sets Put Request for Update Booking without token
    Create Session    session   ${Restfull_Booking_url}     disable_warnings=1
    ${endpoint}     Set Variable    ${single_booking_id_path}
    ${body}=  Load JSON From File   ${update_booking_data}
    ${header1}=   create dictionary  Content-Type=application/json
    Set Global Variable    ${header1}
    ${response}     PUT Request  session     ${endpoint}    data=${body}     headers=${header1}
    Set Global Variable    ${response}

Validate update booking response status code as 403
    System sets Put Request for Update Booking without token
    ${content}=     Convert To String    ${response.status_code}
    Should Be Equal    ${content}   ${forbidden}

#Partial update booking With token
System sets Token in Header and Sends PATCH Request for partial Update Booking
    System sets token for requests
    Create Session    session   ${Restfull_Booking_url}     disable_warnings=1
    ${endpoint}     Set Variable    ${single_booking_id_path}
    ${body}=  Load JSON From File     ${partial_update_booking_data}
    ${header1}=   create dictionary  Content-Type=application/json  cookie=token=${token}
    Set Global Variable    ${header1}
    ${response}     PATCH Request  session     ${endpoint}    data=${body}     headers=${header1}
    Set Global Variable    ${response}

Validate partial update booking contains totalprice as updated
    System sets Token in Header and Sends PATCH Request for partial Update Booking
    ${content}=     Convert To String    ${response.text}
    Should Contain    ${content}   1000


#Partial update booking Without token
System sets PATCH Request for partial Update Booking without token
    Create Session    session   ${Restfull_Booking_url}     disable_warnings=1
    ${endpoint}     Set Variable    ${single_booking_id_path}
    ${body}=  Load JSON From File     ${partial_update_booking_data}
    ${header1}=   create dictionary  Content-Type=application/json
    Set Global Variable    ${header1}
    ${response}     PATCH Request  session     ${endpoint}    data=${body}     headers=${header1}
    Set Global Variable    ${response}

Validate partial update booking response status code as 403
    System sets PATCH Request for partial Update Booking without token
    ${content}=     Convert To String    ${response.status_code}
    Should Be Equal    ${content}   ${forbidden}

#DELETE BOOKING
System sets Token in Header and Sends DELETE Request for Deleting Booking
    System sets token for requests
    Create Session    session   ${Restfull_Booking_url}     disable_warnings=1
    ${endpoint}     Set Variable    ${delete_booking_id_path}
    ${header1}=   create dictionary  Content-Type=application/json  cookie=token=${token}
    Set Global Variable    ${header1}
    ${response}     DELETE Request  session     ${endpoint}  headers=${header1}
    Set Global Variable    ${response}

