#Requires AutoHotkey v2.0
#HotIf WinActive("Forza Horizon 4")
; Make sure tunes/designs/photos are in an unshared state
; Go Horizon Solo since network may disconnect and
; game may show a dialogue that desync script
; Numbers are time in miliseconds.


; Ctrl + 1: Tunes
; Ctrl + 2: Designs
; Ctrl + 3: Photos
; Ctrl + 4: Blueprint
; Ctrl + 5 Wheelspins/Super wheelspin

^1:: { ; Share/unshare tunes
    Loop {
        Send "{Enter}"
        Sleep 1000
        Send "{Down}"
        Sleep 100
        Send "{Enter}"

        Sleep 1000
        Send "{Down}"
        Sleep 50
        Send "{Down}"
        Sleep 50
        Send "{Down}"
        Sleep 50
        Send "{Enter}"
        Sleep 3000 ; Share

        Send "{Enter}"
        Sleep 1000
        Send "{Down}"
        Sleep 100
        Send "{Enter}"
        Sleep 3000 ; Unshare
    }
}

^2:: { ; Share/unshare designs
    Loop { 
        Send "{Enter}"
        Sleep 1000
        Send "{Enter}"
        Sleep 1000
        Send "{Down}"
        Sleep 100
        Send "{Down}"
        Sleep 100
        Send "{Down}"
        Sleep 100
        Send "{Enter}"
        Sleep 3000 ; Share

        Send "{Enter}"
        Sleep 1000
        Send "{Enter}"
        Sleep 3000 ; Unshare
    }
}

^3:: { ; Share/unshare photos
    Loop { 
        Sleep 1000
        Send "{Enter}"
        Sleep 3000
        Send "{Down}"
        Sleep 150
        Send "{Enter}"
        Sleep 1500
        Send "{Down}"
        Sleep 150
        Send "{Down}"
        Sleep 150
        Send "{Down}"
        Sleep 150
        Send "{Down}"
        Sleep 150
        Send "{Down}"
        Sleep 150
        Send "{Enter}"
        Sleep 15000 ; Share

        Send "{Enter}"
        Sleep 2500
        Send "{Down}"
        Sleep 150
        Send "{Enter}"
        Sleep 3500 ; Unshare
    }
}

; Repeatedly create custom drag race and run it
; For this to work, you need to have fast-travel unlocked, any class X car that
; can easily win the drag race.
; Do not use tune/designs by others as the game may ask you if you like them or not
; Set the difficulty to Unbeatable, otherwise the game
; may ask you to increase difficulty to get more CR if you keeps winning. Create 5 custom events at
; Horizon Festival Drag Strip, make sure the last one has a car theme that contain the
; car you intend to run the custom event. Car type themes recommended, since every car has a
; car type and each car type doesn't contain too many cars. Do not use Anything Goes
; since there might be too many eligible garage cars which may esult in significant loading time;
; Head over to the Horizon Festiavl Drag Strip and press Ctrl + 4 to start the script
; If things goes wrong try find at what stage the script went out of sync, and add 1000 ms to that stage.
^4:: {
    Loop {
        Sleep 1000
        Send "{Enter}" ; Enters the race
        Sleep 1500
        Send "{Enter}" ; Enters solo race
        Sleep 1500
        Send "{Left}" ; Create blueprint
        Sleep 200
        Send "{Enter}" ; Confirm
        Sleep 1500
        Send "{Enter}" ; Pop-up shows maximum blueprints reached
        Sleep 1500
        Send "{Enter}" ; Dismiss pop-up
        Sleep 1500
        Send "{Enter}" ; Overwrite blueprints
        Sleep 1500
        Send "{Enter}" ; Select car theme
        Sleep 1500
        Send "{Enter}" ; Select Create blueprint
        Sleep 1500
        Send "{Enter}" ; Select Overwrite event
        Sleep 1500
        Send "{Enter}" ; Select the custom event
        Sleep 1500

        Send "{Enter}" ; Select current car
        Sleep 12000 ; Loading race

        ; If your car can not win the event easily try uncomment these two lines
        ; Send "{Enter}" ; Change difficulty
        ; Sleep 2500 ; Download drivatars

        Send "{Enter}" ; Start race
        Sleep 1000

        Send "{w down}"  ; Accelerate
        Sleep 6000
        Send "{w up}"

        Send "{w down} {d down}"  ; Accelerate while turning right
        Sleep 300
        Send "{w up} {d up}"

        Send "{w down}" ; Accelerate
        Sleep 8000
        Send "{w up}"

        ; Post-race screen
        Send "{Enter}" ; Confirm standing, podium, CR and influence rewards
        Sleep 1000
        Send "{Enter}"
        Sleep 1000
        Send "{Enter}"
        Sleep 1000
        Send "{Enter}"
        Sleep 1000
        Send "{Enter}"
        Sleep 1000

        Send "{Enter}" ; Confrim possible wheelspin
        Sleep 1000
        Send "{Down}" ; Uncomment following lines to keep duplicate cars
        Sleep 1000
        Send "{Enter}"
        Sleep 1000
        Send "{Down}"
        Sleep 1000
        Send "{Enter}"
        Sleep 1000
        Send "{Down}"
        Sleep 1000
        Send "{Enter}"
        Sleep 1000
        Send "{Down}"
        Sleep 1000
        Send "{Enter}"
        Sleep 1000
        Send "{Down}"
        Sleep 1000
        Send "{Enter}"
        Sleep 1000
        Send "{Down}"
        Sleep 1000


        Sleep 7000 ; In freeroam

        Send "m" ; Open map
        Sleep 1000
        Send "{Up down}" ; Zoom in map
        Sleep 1000
        Send "{Up up}"
        Sleep 100
        Send "{w down}" ; Move cursor to the drag race

        ; Time in miliseconds, depends on resolution
        ; If cursor move too far try decrease this value and
        ; vice versa
        Sleep 241
        Send "{w up}"
        Sleep 100

        Send "x" ; Fast-travel to the event
        Sleep 1000
        Send "{Enter}" ; Confirm fast-travel
        Sleep 8000 ; Fast-traveling to destination
    }
}

; Open wheelspin/super wheelspins and sell duplicate cars
^5:: {
    Loop {
        Send "{Enter}"
        Sleep 1000
        Send "{Down}" ; Comment this line if want duplicated cars
        Sleep 1000
    }
}