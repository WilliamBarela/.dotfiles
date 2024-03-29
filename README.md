# dotfiles for Ubuntu based systems

## fuzzy find in vim accross project:
[https://www.freecodecamp.org/news/how-to-search-project-wide-vim-ripgrep-ack/] (ripgrep and ack)

## notes for ~/.vimrc file
The .vimrc file was inspired by the community post here:
[https://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim?rq=1] ()

## Some productivity tips:

  ### Smart movements

    * and  # search for the word under the cursor forward/backward.
    w to the next word
    W to the next space-separated word
    b / e to the begin/end of the current word. (B / E for space separated only)
    gg / G jump to the begin/end of the file.
    % jump to the matching { .. } or ( .. ), etc..
    { / } jump to next paragraph.
    '. jump back to last edited line.
    g; jump back to last edited position.


  ### Quick editing commands

    I insert at the begin.
    A append to end.
    o / O open a new line after/before the current.
    v / V / Ctrl+V visual mode (to select text!)
    Shift+R replace text
    C change remaining part of line.


  ### Combining commands

  Most commands accept a amount and direction, for example:

    cW = change till end of word
    3cW = change 3 words
    BcW = to begin of full word, change full word
    ciW = change inner word.
    ci" = change inner between ".."
    ci( = change text between ( .. )
    ci< = change text between < .. > (needs set matchpairs+=<:> in vimrc)
    4dd = delete 4 lines
    3x = delete 3 characters.
    3s = substitute 3 characters.


  ### Useful programmer commands

    r replace one character (e.g. rd replaces the current char with d).
    ~ changes case.
    J joins two lines
    Ctrl+A / Ctrl+X increments/decrements a number.
    . repeat last command (a simple macro)
    == fix line indent
    > indent block (in visual mode)
    < unindent block (in visual mode)


  ### Macro recording

    Press q[ key ] to start recording.
    Then hit q to stop recording.
    The macro can be played with @[ key ].
