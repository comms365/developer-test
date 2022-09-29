# Activate a connection

Within our sample application we have inactive connections that need to be activated

Upon activating a connection, the associated user needs to receive an email telling them the IP address of the connection and when it was activated

This application uses http basic authentication. see `application_controller.rb` for details

## Requirements

Create an rails API endpoint to transition an inactive connection to active

`PATCH /connections/:id/activate`

### Params

|name|value|required|
|----|-----|--------|
|send_confirmation_msg|Boolean|N|

1. Update the connection state from `inactive` to `active` (see confirmation rules)

2. Set the timestamp for `activated_at` and set `activated_by` to the correct user

3. If `send_confirmation_message` is true, Send a confirmation notification to the connection's user


### Activation Rules

A connection will transition through the following states in its lifetime.

|State|Description|
|-----|-----------|
|locked|connection has just been created|
|inactive|connection has been signed off and is ready to be activated by the user|
|active|connection is active and can send/receive data|
|suspended|connection can no longer send and receive data|
|terminated|A connection has been terminated by the provider|

#### Rules

- Users can only activate their own connections
- Admin users can activate any connection
- active connections cannot be re-activated
- only `inactive` or `suspended` connections can transition to `active`

## Bonus Points

- Appropriate test coverage
- Coding standards
- If you think some already existing code in this repo can be implemented better, then feel free to change it


## Time

This task should only take around an hour to complete. Please note down how much time you spent.

## Submission

Clone the repo and submit a zip file back via email
