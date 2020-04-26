Add-PSSnapin Quest.ActiveRoles.ADManagement 
$cp = read-host « Entre le nom d ouverture de session Admin »
$pw = read-host « Entre ton mot de passe ADM » -AsSecureString
$dc = read-host « Entre le controleur de domaine »
$grp = read-host « Entre le nom du groupe »
$member = read-host « Entre le nom de l utilisateur, separer par des virgules si plusieurs utilisateurs»

$co = Connect-QADService –service $dc –ConnectionAccount $cp  –ConnectionPassword $pw


#$group = read-host « Nom du groupe »
#$user = read-host  « Nom de l utilisateur »
add-qadgroupmember $grp -Member $member
