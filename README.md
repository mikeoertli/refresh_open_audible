# Refresh OpenAudible

<p align="center">
<img width="192" alt="Light/Dark Mode Icon" src="icon.png"/>
</p>

This is an AppleScript that will open OpenAudible.app, then bring it to the foreground,
perform a quick refresh, then poll for completion of the refresh and exit.

## Building the `.app`

This is  one-time step required initially and then again if any modifications are made to
the AppleScript.

Open the given AppleScript in `Script Editor.app`, then select `File > Export...` and select
the `Application` format and export to: `/Applications/RefreshOpenAudible.app`.

## Usage

My use case for this is to be triggered via a remote script command, so there's a shell 
script that launches the script.

Make sure to add execute permissions to the script:

```sh
chmod +x ./refresh_open_audible.sh
```

