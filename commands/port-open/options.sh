# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Thu Jul  9 13:17:05 PDT 2015
#
#/ usage: waitfor:port-open  --interval <30>  --host <"">  --port <> 

# _rerun_options_parse_ - Parse the command arguments and set option variables.
#
#     rerun_options_parse "$@"
#
# Arguments:
#
# * the command options and their arguments
#
# Notes:
# 
# * Sets shell variables for any parsed options.
# * The "-?" help argument prints command usage and will exit 2.
# * Return 0 for successful option parse.
#
rerun_options_parse() {

    while [ "$#" -gt 0 ]; do
        OPT="$1"
        case "$OPT" in
            --interval) rerun_option_check $# $1; INTERVAL=$2 ; shift ;;
            --host) rerun_option_check $# $1; HOST=$2 ; shift ;;
            --port) rerun_option_check $# $1; PORT=$2 ; shift ;;
            # help option
            -|--*?)
                rerun_option_usage
                exit 2
                ;;
            # end of options, just arguments left
            *)
              break
        esac
        shift
    done

    # Set defaultable options.
    [ -z "$INTERVAL" ] && INTERVAL="$(rerun_property_get $RERUN_MODULE_DIR/options/interval DEFAULT)"
    # Check required options are set
    [ -z "$INTERVAL" ] && { echo >&2 "missing required option: --interval" ; return 2 ; }
    [ -z "$HOST" ] && { echo >&2 "missing required option: --host" ; return 2 ; }
    [ -z "$PORT" ] && { echo >&2 "missing required option: --port" ; return 2 ; }
    # If option variables are declared exportable, export them.

    #
    return 0
}


# If not already set, initialize the options variables to null.
: ${INTERVAL:=}
: ${HOST:=}
: ${PORT:=}


