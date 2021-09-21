#!/usr/bin/osascript

# Required parameters:
# @raycast.author Darryl Brooks
# @raycast.authorURL https://github.com/DarrylBrooks97
# @raycast.schemaVersion 1
# @raycast.title Send iMessage
# @raycast.mode fullOutput
# @raycast.packageName iMessage
# @raycast.argument1 { "type": "text", "placeholder": "Message", "optional": false }
# @raycast.argument2 { "type": "text", "placeholder": "Buddy First Name", "optional": false }

# @raycast.description Send iMessages to your contacts

# Optional parameters:
# @raycast.icon ??

on run argv

  
  -- if (item 2 of argv) equals "" then
  set buddyName to (item 2 of argv)

  tell application "Contacts"

    -- set targetContact1 to name of (person 1 whose first name contains buddyName)
    set targetContact1 to value of phone 1 of (person 1 whose name contains buddyName)

    tell application "Messages"
      set targetContact to targetContact1
      set newMessage to (item 1 of argv)
      send newMessage to buddy targetContact
    end tell
  -- return targetContact1
  end tell
  display dialog "Message Sent"
end run 