# Vim GTD

A Getting Things Done list in Vim.

## Rationale

Until recently I have been having a very poor experience with todo lists.

I have tried pen and paper, but I am too much of a perfectionist and too forgetful to
always carry them around -- also, I miss the opportunity of integrating into my
calendar applications and whatnot.

There is some fantastic software out there, they none have ever seemed to really
fit into my everyday work-flow or have all the features I desire.

I have tried using plaintext formats like markdown and todo.txt, but never
really enjoyed working with them very much.

Recently I have been using vimoutliner, which I have found fantastic as it fits
neatly into my work-flow. Though it is not without its limitations, and some of
design choices that seem at odds with how I would ideally structure my todo
list.

As a result I have decided to write my own Vim plugin, highly inspired by
vimoutliner, but leaning much more toward my own style of writing GTD lists.

Ultimately I would like to be able to parse the file to JSON in order to use it
with other applications (e.g. an elm gtd app, a siri integrations...)


## Syntax

Some thoughts on what the syntax should be like...

```gtd
# Heading:

    [+] Project:
        [_] Todo item (first doable item is implicitly "next action")
            [_] Nested todo item
        [x] Completed todo item
        [_] Priority level signified by exclamation points !!!
        [_] Context added with at-sign @home
        - Non-action item: useful for creating things like reading lists
        """
        # Multiline Text Block

        Useful for providing information

        Able to contain *markdown*! Including syntax highlighted codeblocks
        """
        [_] Common tags
            WAITING: payday
            DUE: 2016/12/01
            STARTED: 2016/02/20
            TAKES: <30 minutes
            ENERGY: 3

    [+] Another Project:
        {- btw, empty lines are preserved in AST, but have no significance -}
        #! echo "a shebang indicates an executable task which is invoked with <leader>e";
```

## Commands

Vim commands (should also make is simple to write command-line aliases)

In all the display actions you will be able to toggle done status the
highlighted item using the toggle key

- `:GTD` - opens gtd file specified in vimrc
- `:GTDAdd item` - adds an item to inbox
- `:GTDSearch string` - display all items that match search term "string"
- `:GTDContext home` - display all items with context of "home"
- `:GTDNextAction` - display all next items
- `:GTDPriority` - display all items with priority marks, in order of highest to lowest
- `:GTDToday` - display all next items and items with due date of today
- `:GTDTomorrow` - display all next items and items with due date of tomorrow
- `:GTDWeek` - display all next items and items with due date this week
- `:GTDEnergy 4` - display any items with energy level of 4 or lower

## Keys

Some ideal keybindings... These will probably have to change

- Make checkbox (works with selections): `<leader>c`
- Toggle done status: `;;`
- Toggle priority: `!!`
- Insert today's date: `<leader>d`
- Execute command: `<leader>e`
- Fold level 1 (headers): `<leader>1`
- Fold level 2 (projects): `<leader>2`
- Fold level 3 (tasks + items): `<leader>3`
- Fold level 4 (notes + tags): `<leader>4`
