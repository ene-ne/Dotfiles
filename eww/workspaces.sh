#!/usr/bin/env bash
herbstclient --idle "tag_*" 2>/dev/null | {
while true; do
work1=$(herbstclient tag_status | tr -s '[:blank:]' '\n'| sed -n 2p)
work2=$(herbstclient tag_status | tr -s '[:blank:]' '\n'| sed -n 3p)
work3=$(herbstclient tag_status | tr -s '[:blank:]' '\n' |sed -n 4p)
work4=$(herbstclient tag_status | tr -s '[:blank:]' '\n'| sed -n 5p)

wo1=$(herbstclient tag_status | tr -s '[:blank:]' '\n'| grep \: | grep 1)
wo2=$(herbstclient tag_status | tr -s '[:blank:]' '\n'| grep \: | grep 2)
wo3=$(herbstclient tag_status | tr -s '[:blank:]' '\n'| grep \: | grep 3)
wo4=$(herbstclient tag_status | tr -s '[:blank:]' '\n'| grep \: | grep 4)

work_act=$(herbstclient tag_status | tr -s '[:blank:]' '\n'| grep \#)

wc1="empty"
wc2="empty"
wc3="empty"
wc4="empty"

    {
if [ "$work1" == "$work_act" ] ; then
    wc1="active_workspace"

elif [ "$work2" == "$work_act" ] ; then
    wc2="active_workspace"
elif [ "$work3" == "$work_act" ] ;   then
    wc3="active_workspace"
else 
    wc4="active_workspace"
fi
}
if [ "$wo1" == ":1" ] ; then
    wc1="occupied_workspace"
fi
if [ "$wo2" == ":2" ] ; then 
    wc2="occupied_workspace"
fi
if [ "$wo3" == ":3" ] ; then
    wc3="occupied_workspace"
fi    
if [ "$wo4" == ":4" ]   ; then 
    wc4="occupied_workspace"
fi    

echo "(box :class \"workspaces\" :orientation \"h\"    :halign \"start\" :spacing \"15\"     :space-evenly \"false\"  (button  :onclick \"herbstclient use 1\"     :class \"$wc1\"     \"♣\" ) (button :onclick \"herbstclient use 2\"  :class \"$wc2\"  \"♦\")  (button :onclick \"herbstclient use 3 \"  :class \"$wc3\"     \"♥\" ) (button :onclick \"herbstclient use 4\"   :class \"$wc4\"    \"♠\" ))"

read -r || break
done

}

