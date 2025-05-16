#!/usr/bin/env bash
# refresh_openaudible.sh — launch, sync, wait, then quit

open -a RefreshOpenAudible

# This was the plan, but macOS limits the ability to control other applications and
# the permission prompt was not appearing. Even adding permissions manually didn't seem
# to address the issues. So alas... I just created the AppleScript directly...

# # 1. Launch OpenAudible (if not already running)
# open -a OpenAudible
# sleep 2

# # 2. Trigger the Quick Audible Library Sync via AppleScript
# osascript <<'AS'
# tell application "System Events"
#   -- bring OA frontmost
#   tell application "OpenAudible" to activate
#   delay 1
#   tell process "OpenAudible"
#     click menu bar item "Controls" of menu bar 1
#     delay 0.2
#     click menu item "Quick Audible Library Sync" of menu 1 of menu bar item "Controls" of menu bar 1

#     -- 3. Poll until the menu item is re-enabled (sync complete)
#     repeat
#       delay 5
#       if enabled of menu item "Quick Audible Library Sync" of menu 1 of menu bar item "Controls" of menu bar 1 then
#         exit repeat
#       end if
#     end repeat

#     -- 4. Quit OpenAudible cleanly
#     tell application "OpenAudible" to quit
#   end tell
# end tell
# AS