# CONFIGURACIÓN Y DEPENDENCIAS

Modify the number of system monitoring files

Open:
`
sudo nvim /etc/sysctl.conf
`

Add a line at the bottom

`
fs.inotify.max_user_watches=524288
`

Then save and exit!

`
sudo sysctl -p
`

* Efm Language Server
Necesario para el funcionamiento de __LS__ de _markdown_ y _vim_:

```bash
    go get github.com/mattn/efm-langserver
```

_INFO_: [Efm-langserver](https://github.com/mattn/efm-langserver)

* Bash Language Server
Dependencias a instalar:

```bash
    npm i -g bash-language-server
```

_INFO_: [Bash Language Server](https://github.com/mads-hartmann/bash-language-server)
