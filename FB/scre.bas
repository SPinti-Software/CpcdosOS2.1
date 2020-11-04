screen 12
print "En pause en screen 12!"
print "En pause en screen 12!"
print "En pause en screen 12!"
print "En pause en screen 12!"
print "En pause en screen 12!"
print "En pause en screen 12!"

Dim as integer px, py, whel, bt, clip
while(inkey$ = "")
	Getmouse(px, py, whel, bt, clip)
	locate 10, 10 : print "x:" & px & " y:" & py & "."
wend

sleep