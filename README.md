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
emerge app-emulation/anbox
```
Once installed, it should be possible to use the
anbox software by doing something undocumented.

In summary: nothing to see here, check back later.

-gmt

Greg Turner <gmt@be-evil.net>
