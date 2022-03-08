## Commenter.vim

A simple Vim plugin to comment and uncomment code. 

### Features
- Single-line Comment
- Multi-line Comment
- Auto detection of comments from file-extension

### Installation and Setup

- Add `Mr-Destructive/commenter.vim` as the Plugin path for any plugin manager in Vim.
- Use custom maps to comment/uncomment code.

#### Comment Code Map

```vimscript
nnoremap <leader>cm :call Comment()<cr>
```

The map keys (`<leader>cm`) can be any key as per your preference.

#### Uncomment Code Map

```vimscript
nnoremap <leader>uc :call Uncomment()<cr>
```

The map keys (`<leader>uc`) can be any key as per your preference.

### Language Support 
- Java
- Python
- Javascript
- C/C++
- Ruby
- Haskell
- Go
- Rust
- HTML/CSS
- Lua
