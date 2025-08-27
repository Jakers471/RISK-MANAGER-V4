# Partially Close Positions

## API Endpoint
**URL**: `POST https://api.topstepx.com/api/Position/partialCloseContract`  
**Reference**: `/api/Position/partialCloseContract`

## Description
Partially close a position.

## Parameters

| Name | Type | Description | Required | Nullable |
|------|------|-------------|----------|----------|
| accountId | integer | The account ID. | Required | false |
| contractId | string | The contract ID. | Required | false |
| size | integer | The size to close. | Required | false |

## Example Usage

### Example Request

#### cURL Request
```bash
curl -X 'POST' \
  'https://api.topstepx.com/api/Position/partialCloseContract' \
  -H 'accept: text/plain' \
  -H 'Content-Type: application/json' \
  -d '{
    "accountId": 536,
    "contractId": "CON.F.US.GMET.J25",
    "size": 1
  }'
```

### Example Response

#### Success
```json
{
    "success": true,
    "errorCode": 0,
    "errorMessage": null
}
```

#### Error
```json
{
    "success": false,
    "errorCode": 1,
    "errorMessage": "Error message here"
}
```