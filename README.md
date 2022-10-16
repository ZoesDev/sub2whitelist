# sub2whitelist


## Summary
This software will allow you to have your subscribers to be whitelisted on any Mincreaft server you run. It can be a vanilla, Forge, Bukkit, Spigot, Fabric, Etc.


## Requirements
* Minecraft server with Rcon enabled
* Reverse proxy for in front of the NodeJS application to handle HTTPS requests
* Mysql database setup with included SQL Schema
	* this is used to log Minecraft user to Twitch ID incase you have issues
* Docker-compose and Docker on the server that will run the app if you choose to use it
	* If not you will need
		* Redis 6.2 for sessions management
		* NodeJs 17.x
* API keys from https://dev.twitch.tv
	* Redirect URL: http://localhost:8000 or what you are using as your base URL
	* Category: Website Integration
	* You will need the Client ID and Client Secret


## Docker-compose Setup
1. Download the zip or git clone the url
2. Copy the config_sample.json to config.json
3. Fill in the information in each section. Everything is required.
	* client_id : from the ClientID from before
	* client_secret : from the Client Secret from before
	* redirect_uri : match to exactly what you have in the redirect URL of your API Application.
	* broadcaster_id : Is the ID of the Broadcaster that the subs are from
	* username : Mysql username
	* password : Mysql password
	* host : Hostname or ip of the Mysql server
	* mc_host : Minecraft hostname or IP
	* mc_port : Port for RCON port used
	* mc_password : Password set for RCON on the minecraft server
4. Run `docker-compose build` to build the docker container
5. Run `docker-compose up -d` to run the container and redis server
6. Have the broadcaster login to the site to authenticate.
	* This will have the broadcaster authorize on Twitch the permission channel:read:subscriptions.
7. Subscribers will now be able to login and fill in the information of their Minecraft account to whitelist on the server


## NodeJS Setup
1. download the zip or git clone the url
2. Copy the config_sample.json to config.json
3. Fill in the information in each section. Everything is required.
	* client_id : from the ClientID from before
	* client_secret : from the Client Secret from before
	* redirect_uri : match to exactly what you have in the redirect URL of your API Application.
	* broadcaster_id : Is the ID of the Broadcaster that the subs are from
	* username : Mysql username
	* password : Mysql password
	* host : Hostname or ip of the Mysql server
	* mc_host : Minecraft hostname or IP
	* mc_port : Port for RCON port used
	* mc_password : Password set for RCON on the minecraft server
4. Run `npm install` to install dependencies
5. Run `npm start` to run nodejs app
	* You will need to handle Redis install with this setup
6. Have the broadcaster login to the site to authenticate.
	* This will have the broadcaster authorize on Twitch the permission channel:read:subscriptions.
7. Subscribers will now be able to login and fill in the information of their Minecraft account to whitelist on the server