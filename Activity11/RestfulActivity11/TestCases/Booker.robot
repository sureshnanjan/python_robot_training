*** Settings ***
Resource    ../TestCases/Booker_SD.robot

*** Test Cases ***

TC_01 GET BOOKING ID'S WITH VALID DATA
    [Tags]  GetBookingIds
    GIVEN System set Header Details
    WHEN System sets GET Request for Booking Ids
    AND Validate Status code Get Booking Ids response
    THEN Fetch The Value from Response   ${response}     $[1].bookingid

TC_02 GET SINGLE BOOKING ID WITH VALID DATA
    [Tags]  GetSingleBookingId
    GIVEN System set Header Details
    WHEN System sets GET Request for Single Booking Id
    AND Validate Status code Get Single Booking Id response
    THEN Fetch The Value from Response   ${response}     $.firstname

TC_03 GET SINGLE BOOKING ID WITH VALID DATA
    [Tags]  GetSingleBookingIdWrong
    GIVEN System set Header Details
    WHEN System sets GET Request for Single Booking Wrong Id
    THEN Validate Status code Get Single Booking Wrong Id response

TC_04 CREATE BOOKING DATA
    [Tags]  createbooking
    GIVEN System set Header Details
    WHEN System sets POST Request for Create Booking
    THEN Validate Create booking response

TC_05 GENERATING AUTH TOKEN
    [Tags]  token
    GIVEN System set Header Details
    WHEN System sets token for requests

TC_06 Update Booking using token
    [Tags]  updatebooking
    GIVEN System set Header Details
    WHEN System sets Token in Header and Sends Put Request for Update Booking
    THEN Validate update booking response

TC_07 Update Booking without token
    [Tags]  updatebookingwithouttoken
    GIVEN SYSTEM SET HEADER DETAILS
    WHEN System sets Put Request for Update Booking without token
    THEN Validate update booking response status code as 403

TC_08 Partial Update Booking With token
    [Tags]  partialupdatebookingtoken
    GIVEN SYSTEM SET HEADER DETAILS
    WHEN System sets Token in Header and Sends PATCH Request for partial Update Booking
    THEN Validate partial update booking contains totalprice as updated

TC_09 Partial Update Booking Without token
    [Tags]  partialupdatebookingwithouttoken
    GIVEN SYSTEM SET HEADER DETAILS
    WHEN System sets PATCH Request for partial Update Booking without token
    THEN Validate partial update booking response status code as 403

TC_10 DELETE BOOKING WITH TOKEN
    [Tags]  deletebooking
    GIVEN SYSTEM SET HEADER DETAILS
    WHEN System sets Token in Header and Sends DELETE Request for Deleting Booking


