os.pullEvent = os.pullEventRaw
os.loadAPI(".sertexos/sertexosapi")

headerSub("Games")

print("[1] Worm\n [2] Redirection\n [3] Adventure\n [4] Back")

while true do
  local id, key = os.pullEvent("key")

  if key == 2 then
    shell.run("worm")
  end

  if key == 3 then
    shell.run("redirection")
  end

  if key == 4 then
    shell.run("adventure")
  end

  if key == 5 then
    shell.run(".sertexos/apps")
  end
  sleep(0)
end