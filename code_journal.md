### NPM

List all package depending on a specific package

`npm ls ${package_name}`

### Git

Up to date rebase from origin/main_branch

`git pull --rebase origin ${main_branch}`

Fix accidental branch creation (working_branch) on an incorrect base branch

`git rebase --onto ${correct_base_branch} ${incorrect_base_branch} ${working_branch}`

#### Commit Messages

https://www.conventionalcommits.org/en/v1.0.0/

Thoughts on categories. The following is the priority list so if two exist, one takes precedence over the other

* FEATURE -- Feature development
* FIX -- Fixing a bug
* REFACTOR -- Any Prod code changes or updates that don't introduce anything new
* TESTS -- Any code changes or updates that only touch testing files
* CONFIG -- Changes that only involve config files (ie: package.json scripts etc)
* DOCS -- Any changes to only docs or code comments

### Git Hub Stacks Workflow

1. Create JIRA ticket git branch
2. `gh stack init ${first_branch}`

Create new branches with the stack add command

3. `gh stack add ${branch_to_be_created}`

Anytime during workflow you can run

4. `gh stack sync`

Syncing will push any stack branches up to github

Use GitHub UI to create Pull Requests. When creating PRs remember to:

5. Make base branch the previous branch (for branches above 1st)

6. In GitHub UI, a popup will appear for adding your branch to the stack.

### Vim

How to open a split panel

`:vsplit /path/to/your/file-2.txt`

How to cycle from one split panel to another

`ctrl + w` + `w`

How to select lines

`shift + v`

Copy

`y` (yank)

Paste

`p`


