!#/bin/zsh
set -e

function load_shipdev{
	case EXPRESSION in
	  docker)
	    STATEMENTS
	    ;;

	  native)

	  *)
		TARBALL='ShipDev'
		curl -LkSs https://api.github.com/repos/ktsuttlemyre/ShipDev/tarball -o $TARBALL.tar.gz
		mkdir $TARBALL
		tar -xzf $TARBALL.tar.gz -C $TARBALL
	    ;;
	esac
}
