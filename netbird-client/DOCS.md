# Home Assistant Community Add-on: Netbird Client

## Configuration

### Cloud Solution

1. Setup your free account at [netbird.io][netbird-login]
2. Create a [setup-key][netbird-setup-key] for your Homeassistant
3. In the Add-On Configuration `SETUP_KEY` field, paste in your setup-key.
   1. _Leave the other configurations fields at the default_
4. Start the Add-On
   1. _TIP: You might want to enable "Start on boot"_

### Self-Hosted (Alternative solution)

1. Setup your self-hosted [Netbird instance][netbird-self]
2. Create a [setup-key][netbird-setup-key] for your Homeassistant
3. Add your self-hosted configuration to the Netbird client
   1. `CONFIG_FILE`: Leave this at default
   2. `ADMIN_URL`: Add the admin panel URL for your self-hosted instance.
   3. `MANAGEMENT_URL`: Add the management URL for your self-hosted instance.
4. Start the Add-On
   1. _TIP: You might want to enable "Start on boot"_

### Option: `SETUP_KEY`

Setup key obtained from the Management Service Dashboard.
Use this key to connect your homeassistance to your Netbird mesh network.

**If left blank, the client will generate peer registration URL**
_Copy/paste the URL from the add-on logs_

### Option: `CONFIG_FILE`

Use `CONFIG_FILE` to fore another path for storing the Netbird configuration
_(Default location is often OK.)_

### Option: `ADMIN_URL`

Admin Panel URL. Default for cloud solution is https://app.netbird.io:443

### Option: `MANAGEMENT_URL`

Management Service URL default https://api.wiretrustee.com:443

### Option: `log_level`

`log_level` of the client

- `info`: Default level
- `warning`: Exceptional occurrences that are not errors.
- `error`: Runtime errors that do not require immediate action.
- `trace`: Show every detail, like all called internal functions.
- `debug`: Shows detailed debug information.

Use `info` unless you are troubleshooting

## Authors & contributors

Main author: [Glenn Sommer][github-glemsom]

For a full list of all contributors, check [the contributor's page][github-contributors].

<!-- Github -->

[github-contributors]: https://github.com/glemsom/hassio-netbird/graphs/contributors
[github-glemsom]: https://github.com/glemsom

<!-- Netbird -->

[netbird]: https://netbird.io/
[netbird-login]: https://login.netbird.io/
[netbird-setup-key]: https://app.netbird.io/setup-keys
[netbird-self]: https://github.com/netbirdio/netbird#quickstart-with-self-hosted-netbird
