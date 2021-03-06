///AI Upgrades


//Malf Picker
/obj/item/device/malf_upgrade
	name = "combat software upgrade"
	desc = "A highly illegal, highly dangerous upgrade for artificial intelligence units, granting them a variety of powers as well as the ability to hack APCs."
	icon = 'icons/obj/cloning.dmi'
	icon_state = "datadisk0"


/obj/item/device/malf_upgrade/afterattack(mob/living/silicon/ai/AI, mob/user)
	if(!istype(AI))
		return
	if(AI.malf_picker)
		AI.malf_picker.processing_time += 50
		AI << "<span class='userdanger'>[user] has attempted to upgrade you with combat software that you already possess. You gain 50 points to spend on Malfunction Modules instead.</span>"
	else
		AI << "<span class='userdanger'>[user] has upgraded you with combat software!</span>"
		AI.add_malf_picker()
	user << "<span class='notice'>You upgrade [AI]. [src] is consumed in the process.</span>"
	qdel(src)


//Lipreading
/obj/item/device/surveillance_upgrade
	name = "surveillance software upgrade"
	desc = "A software package that will allow an artificial intelligence to 'hear' from its cameras via lip reading."
	icon = 'icons/obj/cloning.dmi'
	icon_state = "datadisk0"

/obj/item/device/surveillance_upgrade/afterattack(mob/living/silicon/ai/AI, mob/user)
	if(!istype(AI))
		return
	if(AI.eyeobj)
		AI.eyeobj.relay_speech = TRUE
		AI << "<span class='userdanger'>[user] has upgraded you with surveillance software!</span>"
		AI << "Via a combination of hidden microphones and lip reading software, you are able to use your cameras to listen in on conversations."
	user << "<span class='notice'>You upgrade [AI]. [src] is consumed in the process.</span>"
	qdel(src)
