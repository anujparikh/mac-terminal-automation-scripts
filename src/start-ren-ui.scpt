tell application "Terminal"
	activate

	# Task for Tab 1, running rest mock server
	do script "cd ~/Documents/PubUI-Projects/cava-nap; npm run restmock" in front window

	my makeTab()
	do script "cd ~/Documents/PubUI-Projects/cava-nap; npm run server" in front window

	my makeTab()
	do script "cd ~/Documents/PubUI-Projects/cava-nap; npm run client" in front window
end tell

on makeTab()
	tell application "System Events" to keystroke "t" using {command down}
	delay 0.2
end makeTab