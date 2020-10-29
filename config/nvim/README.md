# CONFIGURACIÓN Y DEPENDENCIAS

* COC: plugin principal.

Lista de __Extensiones__:

* __coc-json__
* __coc-html__
* __coc-css__
* __coc-rls__
* __coc-rust-analyzer__
* __coc-yaml__
* __coc-highlight__ provides default document symbol highlighting and color support
* __coc-snippets__
* __coc-list__ provides some basic lists like fzf.vim
* __coc-git__ integración de git
* __coc-yank__
* __coc-markdownlint__
* __coc-flutter__ _(opcional)_

_INFO_: [Coc.nvim](https://github.com/neoclide/coc.nvim)

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
