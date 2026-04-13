# ics-file-cleaner

An AppleScript Mail rule handler that cleans `.ics` calendar files sent from Outlook before importing them into Calendar (iCal) on macOS.

## What it does

Outlook-generated `.ics` invitations often include `ORGANIZER`, `ATTENDEE`, and `PARTSTAT` fields that cause import errors or duplicate attendee noise in macOS Calendar. This script:

1. Detects `.ics` attachments via a Mail.app rule
2. Saves them to `~/Downloads/<rule-name>/<timestamp>-<filename>.ics`
3. Strips `ORGANIZER`, `ATTENDEE`, and `PARTSTAT` lines using `grep`
4. Normalizes Windows CRLF line endings with `perl`
5. Opens the cleaned file in Calendar.app and auto-confirms the import dialog
6. Removes temporary files

## Requirements

- macOS (tested on Snow Leopard and later)
- Mail.app
- Calendar.app (iCal)
- Accessibility permissions for System Events (for UI scripting)

## Installation

1. Copy the `.scpt` file to `~/Library/Application Scripts/com.apple.mail/`
2. In Mail.app, create a rule that matches messages with `.ics` attachments and runs this script as the action

## Notes

- The script is localized for French macOS (the import confirmation dialog button is `"Ajouter"`). If your macOS is in English, change `"Ajouter"` to `"Add"` in the script.
- The `~/Downloads/` folder must exist before running.

## Author

[Philippe de Wost](https://linkedin.com/in/pdewost)

## License

Apache License 2.0 — see [LICENSE](LICENSE).
