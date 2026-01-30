# GitHub Webhook Receiver API Documentation

## Endpoints

### POST /webhook
Receive GitHub webhook events.

**Headers:**
- `X-GitHub-Event`: Event type (push, pull_request)
- `X-Hub-Signature-256`: HMAC signature for verification

**Response:**
- `200`: Event processed successfully
- `400`: Missing required headers or invalid JSON
- `401`: Invalid signature
- `500`: Internal server error

### GET /api/events
Get all events (paginated).

**Query Parameters:**
- `limit`: Number of events to return (default: 50)
- `skip`: Number of events to skip (default: 0)

### GET /api/events/latest
Get latest events for UI display.

**Response Format:**
```json
[
  {
    "message": "User pushed to main on 1 April 2021 - 9:30 PM UTC",
    "action": "PUSH",
    "timestamp": "2021-04-01T21:30:00Z"
  }
]