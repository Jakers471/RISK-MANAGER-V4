# Search for Account

**API URL**: POST https://api.topstepx.com/api/Account/search

**API Reference**: **/api/Account/search**

## Description

Search for accounts based on the provided request parameters.

## Parameters

| Name | Type | Description | Required | Nullable |
|------|------|-------------|----------|----------|
| onlyActiveAccounts | boolean | Whether to retrieve only active accounts. | Required | false |

## Example Usage

### Example Request

**cURL Request:**
```bash
curl -X 'POST' \
  'https://api.topstepx.com/api/Account/search' \
  -H 'accept: text/plain' \
  -H 'Content-Type: application/json' \
  -d '{
    "onlyActiveAccounts": true
  }'
```

### Example Response

**Success:**
```json
{
    "accounts": [
        {
            "id": 465,
            "name": "Demo Account",
            "status": "Active",
            "balance": 10000.00,
            "equity": 10050.00,
            "margin": 500.00,
            "freeMargin": 9550.00
        }
    ],
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
    "errorMessage": "No accounts found"
}
```                      