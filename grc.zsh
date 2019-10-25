if [[ "$TERM" != dumb ]] && (( $+commands[grc] )) ; then

  # Supported commands
  cmds=(
    blkid \
    cc \
    configure \
    cvs \
    df \
    diff \
    du \
    docker \
    dig \
    env \
    free \
    gcc \
    gmake \
    ifconfig \
    ip \
    last \
    ldap \
    ls \
    lsblk \
    helm \
    kubectl \
    make \
    mount \
    mtr \
    netstat \
    ping \
    ping6 \
    ps \
    traceroute \
    traceroute6 \
    wdiff \
    whois \
    iwconfig \
  );

  # Set alias for available commands.
  for cmd in $cmds ; do
    if (( $+commands[$cmd] )) ; then
      alias $cmd="grc --colour=auto $(whence $cmd)"
    fi
  done

  # Clean up variables
  unset cmds cmd
fi
