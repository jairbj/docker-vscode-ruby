### Ruby Container for Ruby/Rails development using VS Code "Remote - Containers" extension

# Updates
### 2019/08/03
- First release

# Important
 - When creating your docker-compose.yml file you must set **tty: true** to this image related service.

# Features

- It comes with **rubocop**, **ruby-debug-ide** and **debase** pre-installed.
- It comes with required packages for installing **mysql2**, **pg** and **sql3** gems

# Mounting points
- **/usr/src/app** -> workspace default dir
- **/usr/local/bundle** -> gem installation dir (optional)

#  Tags
|Tag|Ruby version|
| ------------ | ------------ |
|[latest](https://github.com/jairbj/docker-vscode-ruby/blob/master/Dockerfile/latest/Dockerfile "latest")|2.6.3|
|[latest](https://github.com/jairbj/docker-vscode-ruby/blob/master/Dockerfile/latest/Dockerfile "latest")|2.6.3|


# Usage
##### VS Code
- Install **Remote - Containers** extension
- Create a **docker-compose.yml** at your workspace root
- Create a **.devcontainer.json** at your workspace root
- Restart you VS Code workstation using option **Reopen Folder in Container**
- Have a happy coding :-)

# Examples
##### docker-compose.yml
```yaml
version: "3.7"
services:
  web:
    image: "jairbj/vscode-ruby:latest"
    ports:
      - "3000:3000"
    volumes:
      - "./:/usr/src/app"
    command: "/bin/bash"
    tty: true
```

##### .devcontainer.json
````json
{
	"dockerComposeFile": "docker-compose.yml",
	"service": "web",
	"workspaceFolder": "/usr/src/app/",
	"extensions": [
		"rebornix.ruby",
		"misogi.ruby-rubocop"
	]
}
````