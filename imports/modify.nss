// modify items
// Remove items by identifiers

//modify(mode=mode.multiple	where=this.id(id.restore_previous_versions,id.cast_to_device) vis=vis.remove)

modify(type="recyclebin" where=window.is_desktop and this.id==id.empty_recycle_bin pos=1 sep  menu="System") // Add a systme menu


modify(type="back" find="shortcut" in="/new" vis=vis.remove)

modify(find="unpin" pos="bottom" menu="Pin//Unpin")
modify(find="pin" pos="top" menu="Pin//Unpin")


modify(where=this.id==id.copy_as_path menu="file manage")
modify(type="dir.back|drive.back" where=this.id==id.customize_this_folder pos=1 sep="top" menu="file manage")

modify(where=str.equals(this.name, ["open in terminal", "open linux shell here"]) || this.id==id.open_powershell_window_here
	pos="bottom" menu="Terminal")

// Developper
//modify(find="open with visual studio" pos=1 menu="develop/editors")
//modify(find="*Visual*" pos=1 menu="develop/editors")

//Move and organize
//modify(mode=mode.multiple find="scan with" menu=title.more_options)

//modify(mode=mode.multiple
//	where=this.id(id.send_to,id.share,id.create_shortcut,id.set_as_desktop_background,id.rotate_left,
//					id.rotate_right, id.map_network_drive,id.disconnect_network_drive,id.format, id.eject,
//					id.give_access_to,id.include_in_library,id.print)
//	pos=1 menu=title.more_options)


// OneDrive
modify(mode="multiple" find="Gérer*|Toujours|Libé*|*OneDrive*|Partager|Synchroniser*" menu="Cloud")
modify(mode="multiple" where=this.id(id.share) menu="Cloud")

// Utilitaires
modify(mode="multiple" find="Analyser*" menu="Utilitaires")
modify(where=this.title=="7-Zip" menu="Utilitaires")
modify(where=this.title=="File Converter" menu="Utilitaires")
modify(where=this.title=="TreeSize" menu="Utilitaires")
modify(mode="multiple" find="Qu*|Scan*|PowerRename" menu="Utilitaires")

// Ouvrir
modify(type="file|directory" find="Ouvrir*|Open*" menu="Ouvrir" sep)

// Glary
modify(mode="multiple" find="*Glary*" menu="Utilitaires/Glary")

//modify(mode="multiple" find="*Visual*" menu="Develop")

// Fichiers
modify(mode="multiple" where=this.id(id.cut,id.delete,id.copy,id.paste) menu="Fichiers" sep)
modify(mode="multiple" find="Copier le lien" menu="Fichiers")

modify(mode="multiple" find="Copier en tant*|Couper|Copier|Coller*" menu="Fichiers")
modify(mode="multiple" find="*raccourci*" menu="Fichiers" sep)
modify(mode="multiple" find="Ajouter aux favoris|Imprimer|Renommer|Copier en tant*|Couper|Copier|Coller*|*raccourci*|Supprimer|Propriétés" menu="Fichiers" sep)
modify(mode="multiple" find="Nouveau*" menu="Fichiers")


// System
modify(mode="back" find="Accorder l'accès*|Perso*|Param*|Aff*|Actu*|Trier*|Vider*" menu="System")
modify(mode="multiple" find="Exécuter*" menu="System")
modify(mode="multiple" where=this.id(id.send_to,id.give_access_to,id.create_shortcut,id.set_as_desktop_background,id.rotate_left,
						id.rotate_right, id.map_network_drive,id.disconnect_network_drive,id.format, id.eject,id.include_in_library,id.print,id.new) 							menu="System")


// Autres
modify(mode=mode.multiple vis=key.shift() where=this.title.length > 2 menu=title.more_options)