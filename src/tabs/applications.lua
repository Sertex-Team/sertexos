os.pullEvent = os.pullEventRaw

 --Data
os.loadAPI(".sertexos/apis/sertexos")
sertexos.load()
sertexos.start()

--Interface

if not http then
	error("You need HTTP API enabled!")
end
 
sertexos.headerSub("Applications")
term.setTextColor(dir)
print(" [1] Games")
term.setTextColor(blue)
print(" [2] Ice-Browser\n [3] SertexGPS\n [4] LuaIDE\n [5] Firewolf\n [6] Back")

while true do
       id, key = os.pullEvent("key")
	
	if key == 2 then
	  shell.run(".sertexos/tabs/games")
	end
	
	if key == 3 then
		shell.run("fg", ".sertexos/applications/iceBrowser")
	end
	
	if key == 4 then
		shell.run("fg", ".sertexos/applications/sertexgps")
	end
	
	if key == 5 then
		shell.run("fg", ".sertexos/applications/luaide")
	end
	
	if key == 6 then
		shell.run("fg", ".sertexos/applications/firewolf")
	end
   
    if key == 7 then
      shell.run(".sertexos/tabs/home")
    end
	
end