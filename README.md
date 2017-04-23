anbox-overlay
=============

This is an experimental&mdash;and by this term, I
mean, "not yet working"&mdash;overlay for building
and installing the [Anbox Android-like container
for Linux](http://anbox.io/) on Gentoo Linux.

To add this overlay to a Gentoo system, install layman
and run the following command as root:

```bash
wget https://raw.github.com/gmt/anbox-overlay/master/anbox-overlay.xml -O /etc/layman/overlays/anbox-overlay.xml
layman -a anbox-overlay
```

Once the implementation is working this will enable
the installation of anbox itself and its dependencies
by means of something like:
```bash
mkdir -p /etc/portage/package.accept_keywords
pushd /etc/portage/package.accept_keywords >/dev/null
ln -s $(portageq get_repo_path / anbox-overlay)/doc/anbox-package.accept_keywords ./anbox
popd >/dev/null
emerge app-emulation/anbox
```

Once thusly installed, it should be possible to fire up the
anbox thingys by doing some lorem ipsum dolor blah blah etc.

In summary: nothing to see here, check back later.

-gmt
