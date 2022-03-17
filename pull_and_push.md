# Commands used in pulling and pushing in Github

(base) N116607:coding_club_example cstephen$ git status
# This command gives an overview of changes between local files and the remote repo 
On branch main
Your branch and 'origin/main' have diverged,
and have 1 and 8 different commits each, respectively.
  (use "git pull" to merge the remote branch into yours)

You have unmerged paths.
  (fix conflicts and run "git commit")
  (use "git merge --abort" to abort the merge)

Changes to be committed:
        modified:   find_files_with_TIME_LIMIT.sh
        new file:   hello_world.txt

Unmerged paths:
  (use "git add <file>..." to mark resolution)
        both modified:   README.md

(base) N116607:coding_club_example cstephen$ git add README.md 
# Adds README.md file to "Changes to be commited:" list

(base) N116607:coding_club_example cstephen$ git status

On branch main
Your branch and 'origin/main' have diverged,
and have 1 and 8 different commits each, respectively.
  (use "git pull" to merge the remote branch into yours)

All conflicts fixed but you are still merging.
  (use "git commit" to conclude merge)

Changes to be committed:
        modified:   README.md
        modified:   find_files_with_TIME_LIMIT.sh
        new file:   hello_world.txt

(base) N116607:coding_club_example cstephen$ git commit -m 'Resolved changes'
# Commit changes under the message "Resolved changes"

[main 2c23032] Resolved changes

(base) N116607:coding_club_example cstephen$ git status
# Checking Git Status after committing shows that there are no further changes to commit

On branch main
Your branch is ahead of 'origin/main' by 2 commits.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

(base) N116607:coding_club_example cstephen$ git push
# Attempt to push changes to repo failed, as I do not have permission to make changes to main repo

remote: Permission to ReaAntKour/coding_club_example.git denied to cstephens0991.
fatal: unable to access 'https://github.com/ReaAntKour/coding_club_example/': The requested URL returned error: 403

(base) N116607:coding_club_example cstephen$ git remote show origin
# Git status can also identify the remote origin (repo) to which I am pushing

* remote origin
  Fetch URL: https://github.com/ReaAntKour/coding_club_example
  Push  URL: https://github.com/ReaAntKour/coding_club_example
  HEAD branch: main
  Remote branch:
    main tracked
  Local branch configured for 'git pull':
    main merges with remote main
  Local ref configured for 'git push':
    main pushes to main (fast-forwardable)

(base) N116607:coding_club_example cstephen$ git remote set-url origin https://github.com/cstephens0991/coding_club_example.git
# Resets the remote origin (remote repo) to which changes are pushed

(base) N116607:coding_club_example cstephen$ git remote show origin

* remote origin
  Fetch URL: https://github.com/cstephens0991/coding_club_example.git
  Push  URL: https://github.com/cstephens0991/coding_club_example.git
  HEAD branch: main
  Remote branch:
    main tracked
  Local branch configured for 'git pull':
    main merges with remote main
  Local ref configured for 'git push':
    main pushes to main (fast-forwardable)

(base) N116607:coding_club_example cstephen$ git push
# Git push is now successful

Enumerating objects: 10, done.
Counting objects: 100% (10/10), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 804 bytes | 134.00 KiB/s, done.
Total 6 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/cstephens0991/coding_club_example.git
   ee0feea..2c23032  main -> main
(base) N116607:coding_club_example cstephen$ 