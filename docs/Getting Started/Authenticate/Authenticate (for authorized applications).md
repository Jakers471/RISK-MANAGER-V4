# Authenticate (for authorized applications)

We utilize JSON Web Tokens to authenticate all requests sent to the API.

## Step 1

Retrieve the admin credentials (username and password, appId, and verifyKey) that have been provided for your firm. You will need these credentials to authenticate with the API.

If you do not have these credentials, please contact your Account Manager for more information.

## Step 2

**API URL**: POST https://api.topstepx.com/api/Auth/loginApp

**API Reference**: **/api/Auth/loginApp**

**cURL Request:**
```bash
curl -X 'POST' \
  'https://api.topstepx.com/api/Auth/loginApp' \
  -H 'accept: text/plain' \
  -H 'Content-Type: application/json' \
  -d '{
    "userName": "yourUsername",
    "password": "yourPassword",
    "deviceId": "yourDeviceId",
    "appId": "yourApplicationID",
    "verifyKey": "yourVerifyKey"
  }'
```

## Step 3

Process the API response, and make sure the result is Success (0), then store your session token in a safe place. This session token will grant full access to the Gateway API.

**Response:**
```json
{
    "token": "your_session_token_here",
    "success": true,
    "errorCode": 0,
    "errorMessage": null
}
```