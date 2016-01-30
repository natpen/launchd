# launchd

I symlink `.plist` files from here to `~/Library/LaunchAgents/`. I create a folder in this repository for each of the tasks I want to run and have the launchd task generate `output.log` and `error.log` files in these folders, so all the launchd-relevant information for a given task is contained in one place.

I haven't messed around much with directories and environment variables for these, so lots of paths are hard-coded with my usual username (natpen). If you want to use any this configuration, you'll want to manually replace those. And/or perhaps investigate what needs to be done to get environment variables to play more nicely with everything. My current (unverified) hypothesis is that my relevant environment variables are only being loaded for interactive shells, which would not be used for a launchd task.
