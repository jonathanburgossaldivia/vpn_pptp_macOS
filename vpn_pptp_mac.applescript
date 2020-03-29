(* App de Jonathan H Burgos S, jonathanburgoss@outlook.com *)

set server to "vpnserver.com"
set user to "Jesus"
set the_password to "Christ_7"

display dialog "sudo killall pppd to exit connection." with title "Conexion vpn" buttons {"Connect", "Disconnect", "Quit"} default button 3
if the button returned of the result is "Connect" then
	do shell script "sudo pppd plugin /System/Library/SystemConfiguration/PPPController.bundle/Contents/PlugIns/PPPDialogs.ppp plugin PPTP.ppp remoteaddress " & server & " user " & user & " password " & the_password & " defaultroute -detach usepeerdns mppe-128" with administrator privileges
else
	if the button returned of the result is "Disconnect" then
		do shell script "killall pppd" with administrator privileges
	end if
end if