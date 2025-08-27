# Place an Order

**API URL**: POST https://api.topstepx.com/api/Order/place

**API Reference**: **/api/Order/place**

## Description

Place an order.

## Parameters

| Name | Type | Description | Required | Nullable |
|------|------|-------------|----------|----------|
| accountId | integer | The account ID. | Required | false |
| contractId | string | The contract ID. | Required | false |
| type | integer | The order type:<br>1 = Limit<br>2 = Market<br>4 = Stop<br>5 = TrailingStop<br>6 = JoinBid<br>7 = JoinAsk | Required | false |
| side | integer | The side of the order:<br>0 = Bid (buy)<br>1 = Ask (sell) | Required | false |
| size | integer | The size of the order. | Required | false |
| limitPrice | decimal | The limit price for the order, if applicable. | Optional | true |
| stopPrice | decimal | The stop price for the order, if applicable. | Optional | true |
| trailPrice | decimal | The trail price for the order, if applicable. | Optional | true |
| customTag | string | An optional custom tag for the order. Must be unique across the account. | Optional | true |
| linkedOrderId | integer | The linked order id. | Optional | true |

## Example Usage

### Example Request

**cURL Request:**
```bash
curl -X 'POST' \
  'https://api.topstepx.com/api/Order/place' \
  -H 'accept: text/plain' \
  -H 'Content-Type: application/json' \
  -d '{
    "accountId": 465,
    "contractId": "CON.F.US.DA6.M25",
    "type": 2,
    "side": 1,
    "size": 1,
    "limitPrice": null,
    "stopPrice": null,
    "trailPrice": null,
    "customTag": null,
    "linkedOrderId": null
  }'
```

### Example Response

**Success:**
```json
{
    "orderId": 9056,
    "success": true,
    "errorCode": 0,
    "errorMessage": null
}
```

**Error:**
```json
{
    "success": false,
    "errorCode": 1,
    "errorMessage": "Invalid account ID"
}
```