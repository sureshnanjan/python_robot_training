*** Settings ***
Library    RequestsLibrary
Library    Collections
Suite Setup    Authenticate as Admin


*** Variables ***
${url}  "https://restful-booker.herokuapp.com/"
${testuser}     John
*** Test Cases ***
CheckingMyBasics Passing
    Log     "Starting Test"
    ${my_variable}    Set Variable    100
    Should Be Equal     ${my_variable}      100
    Log     ${my_variable}
    My Custom Keyword Demo


CheckingMyBasics Failing
    Log     "Starting Test"
    ${my_variable}    Set Variable    100
    Should Be Equal     ${my_variable}      200
    Log     ${my_variable}
    My Custom Keyword Demo

Test SSL Validation
    ${response}    GET    https://expired.badssl.com/   verify=${False}
    Status Should Be    200



Get Bookings from Restful Booker
    ${params}    Create Dictionary    firstname=${testuser}
    ${additional}   Create Dictionary       verify=${False}
    ${response}    GET    ${url}/booking    ${params}     verify=${False}
    #${response}    GET    ${url}/booking    ${params}       200     "Thei sis Message"      verify=${False}
    Status Should Be    200
    Log List    ${response.json()}

    FOR  ${booking}  IN  @{response.json()}
        ${response}    GET    https://restful-booker.herokuapp.com/booking/${booking}[bookingid]
        TRY
            Log    ${response.json()}
        EXCEPT
            Log    Cannot retrieve JSON due to invalid data
        END
    END

Create a Booking at Restful Booker
    ${booking_dates}    Create Dictionary    checkin=2022-12-31    checkout=2023-01-01
    ${body}    Create Dictionary    firstname=Hans    lastname=Gruber    totalprice=200    depositpaid=false    bookingdates=${booking_dates}
    ${response}    POST    url=https://restful-booker.herokuapp.com/booking    json=${body}
    ${id}    Set Variable    ${response.json()}[bookingid]
    Set Suite Variable    ${id}
    ${response}    GET    https://restful-booker.herokuapp.com/booking/${id}
    Log    ${response.json()}
    Should Be Equal    ${response.json()}[lastname]    Gruber
    Should Be Equal    ${response.json()}[firstname]    Hans   
    Should Be Equal As Numbers    ${response.json()}[totalprice]    200
    Dictionary Should Contain Value     ${response.json()}    Gruber

Delete Booking
    ${header}    Create Dictionary    Cookie=token\=${token}
    ${response}    DELETE    url=https://restful-booker.herokuapp.com/booking/${id}    headers=${header}   
    Status Should Be    201    ${response}

*** Keywords ***
Authenticate as Admin
    ${body}    Create Dictionary    username=admin    password=password123
    ${response}    POST    url=https://restful-booker.herokuapp.com/auth    json=${body}
    Log    ${response.json()}
    ${token}    Set Variable    ${response.json()}[token]
    Log    ${token}
    Set Suite Variable    ${token}

My Custom Keyword Demo
    Log     "This is my custom Keyword"
    ${resp}     PersitetDoPost
