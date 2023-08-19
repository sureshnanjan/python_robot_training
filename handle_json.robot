*** Settings ***
Documentation       Examples of JSON operations.
Library             RPA.JSON

*** Tasks ***
JSON operations
    ${json}=    Convert String to JSON    {"orders": [{"id": 1},{"id": 2}]}
    # ${json} = {'orders': [{'id': 1}, {'id': 2}]}
    ${first_order_id}=    Get value from JSON    ${json}    $.orders[0].id
    # ${first_order_id} = 1
    ${all_ids}=    Get values from JSON    ${json}    $..id
    # ${all_ids} = [1, 2]
    ${json}=    Add to JSON    ${json}    $.orders    {"id": 3}
    # ${json} = {'orders': [{'id': 1}, {'id': 2}, '{"id": 3}']}
    ${json}=    Delete from JSON    ${json}    $.orders[-1:]
    # ${json} = {'orders': [{'id': 1}, {'id': 2}]}
    ${json}=    Update value to JSON    ${json}    $.orders[1].id    4
    # ${json} = {'orders': [{'id': 1}, {'id': '4'}]}
    ${json_as_string}=    Convert JSON to String    ${json}
    # ${json_as_string} = {"orders": [{"id": 1}, {"id": "4"}]}
    Save JSON to file    ${json_as_string}    orders.json
    ${json}=    Load JSON from file    orders.json
    # ${json} = {'orders': [{'id': 1}, {'id': '4'}]}