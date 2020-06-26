# mathlang.vim

Mathmatical Vocabulary for Vim Completion (currently only in german)

## Getting Started

This is a collection of mathmatical (and a few physics) vocabulary which helps me write faster in
vim (and spell them right). It works by adding the files to the vim dictionary variable, so that vim
uses them in completion.

I'm only adding the vocabulary of what I'm currently studying, therefore it will be constantly
extendend. That's also why it is only in german until I will start to study in english, as it is a
lot of work to create these dictionaries at once.

As the vocabulary is in simple text files they could also be used outside of vim.

Currently it only loads the dictionaries for `tex` filetypes, but this will be changed.

Available dictionaries are

* Mathematics `mat`
    * General `general`
    * Analysis `analysis`
    * Linear Algebra `linalg`
* Physics `phy`
    * General `general`
* Famous Names `people`

The main focus is on the mathmatical vocabulary, so anything that is used in physics and mathmatics
will be in the mathmatical section. Therefore only physics exlusive terms will be in the physics
section.

## Installing


Installing via vim-plug
```vim
Plug 'eichboson/mathlang.vim'
```


If you are using CoC for completion you will also need to install coc-dictionary.
This adds vim's dictionary as a completion source for CoC.

```
:CocInstall coc-dictionary
```

## Configuration

### Disabling the plugin
```
let g:mathlang_disable = 1
```

### Cherrypick dictionaries
By default every dictionary is enabled. If you want you can disable single dictionaries or a
complete category.
To disable certain dictionaries add them to the blacklist. For example
```
let g:mathlang_blacklist = ['mat_linalg', 'people']
```

or to disable the complete category add
```
let g:mathlang_blacklist = ['mat']
```

## See also
If you are interested in writing latex in vim I can recommend you check out these
* [quicktex](https://github.com/brennier/quicktex "brennier/quicktex")
* [tex-conceal.vim](https://github.com/KeitaNakamura/tex-conceal.vim "KeitaNakamura/tex-conceal.vim")
* [Gilles Castel awesome Latex setup](https://castel.dev/)
