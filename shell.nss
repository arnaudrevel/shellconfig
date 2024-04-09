settings
{
	priority=1
	exclude.where = !process.is_explorer
	showdelay = 200
	// Options to allow modification of system items
	modify.remove.duplicate=1
	tip.enabled=true
}

import 'imports/theme.nss'
import 'imports/images.nss'
import 'imports/modify.nss'



menu(mode="multiple" title="Pin/Unpin" image=icon.pin) { }

menu(mode="multiple" title=title.more_options image=icon.more_options){}

menu(mode="multiple" title="System" image=\uE0BE){
	item(title="shutdown+0h" vis=key.shift() cmd-ps=`-command "shutdown.exe -s -t 1"` image)
	item(title="shutdown+1h" vis=key.shift() cmd-ps=`-command "shutdown.exe -s -t 3600"` image)
}

menu(mode="multiple" title="Cloud" image=\uE027){}

menu(mode="multiple" title="Utilitaires" image=\UE0F8){}

menu(mode="multiple" title="Ouvrir" image=icon.more_options){}

menu(mode="multiple" title="Fichiers" image=icon.more_options){}


import 'imports/terminal.nss'
import 'imports/file-manage.nss'
import 'imports/develop.nss'
import 'imports/goto.nss'
import 'imports/taskbar.nss'
