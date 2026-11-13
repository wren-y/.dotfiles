_complete_x_set_color()
{
    case $CURRENT in
	2) _files -W "${HOME}/.Xresources.d/colors/" ;;
	*) _default ;;
    esac
}
compdef _complete_x_set_color x-set-color
