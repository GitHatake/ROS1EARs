#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_driver"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/aokilablinuxws/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/aokilablinuxws/catkin_ws/install/lib/python2.7/dist-packages:/home/aokilablinuxws/catkin_ws/build/torobo_driver/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/aokilablinuxws/catkin_ws/build/torobo_driver" \
    "/usr/bin/python2" \
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_driver/setup.py" \
     \
    build --build-base "/home/aokilablinuxws/catkin_ws/build/torobo_driver" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/aokilablinuxws/catkin_ws/install" --install-scripts="/home/aokilablinuxws/catkin_ws/install/bin"
