laomaiweng-overlay
==================

Gentoo overlay for ebuilds I maintain / work on.

Usage
-----

* Create `/etc/portage/repos.conf/laomaiweng-overlay.conf`:

```
[laomaiweng-overlay]
location = /var/lib/overlays/laomaiweng-overlay
sync-type = git
sync-uri = https://github.com/laomaiweng/laomaiweng-overlay
auto-sync = yes
```
* Run `emaint sync --repo laomaiweng-overlay`

* Emerge stuff


Package status
--------------

<table>
  <tr><th>Category</th><th>Package</th><th>Comment</th><th>Repo</th></tr>
  <tr><td rowspan=1>app-doc</td><td>make-doc</td><td>HTML documentation for GNU make</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=1>dev-games</td><td>mygui</td><td>bugfix for <a href="https://bugs.gentoo.org/665804">#665804</a>, bugfix for missing include with =dev-games/ogre-1.12.4</td><td>Portage</td></tr>
  <tr><td rowspan=1>dev-lua</td><td>ldoc</td><td>backport PR #266, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=8>dev-python</td><td>argh</td><td>bump PYTHON_TARGETS to 3.8</td><td>Portage</td></tr>
  <tr><td>blessings</td><td>bump PYTHON_TARGETS to 3.8</td><td>Portage</td></tr>
  <tr><td>bpython</td><td>bump PYTHON_TARGETS to 3.{7,8}</td><td>Portage</td></tr>
  <tr><td>construct</td><td>bump PYTHON_TARGETS to 3.{7,8}, drop 2.7</td><td>Portage</td></tr>
  <tr><td>curtsies</td><td>bump PYTHON_TARGETS to 3.{7,8}</td><td>Portage</td></tr>
  <tr><td>iocapture</td><td>bump PYTHON_TARGETS to 3.8</td><td>Portage</td></tr>
  <tr><td>pudb</td><td>version bump, bump PYTHON_TARGETS to 3.8</td><td>Portage</td></tr>
  <tr><td>watchdog</td><td>bump PYTHON_TARGETS to 3.8</td><td>Portage</td></tr>
  <tr><td rowspan=2>dev-util</td><td>bear</td><td>new package, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td>visual-regexp</td><td>proxy-maintained</td><td>Portage</td></tr>
  <tr><td rowspan=2>dev-vcs</td><td>git-crypt</td><td>compatibility with >=dev-libs/openssl-1.1.0 <tt>no-deprecated</tt></td><td>Portage</td></tr>
  <tr><td>git-remote-gcrypt</td><td>new ebuild</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=1>media-libs</td><td>libid3tag</td><td>bugfix for <a href="https://bugs.gentoo.org/605158">#605158</a></td><td>Portage</td></tr>
  <tr><td rowspan=2>net-libs</td><td>libesmtp</td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/624412">#624412</a>)</td><td>Portage</td></tr>
  <tr><td>serf</td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/592508">#592508</a>, reported upstream as <a href="https://issues.apache.org/jira/browse/SERF-188">#SERF-188</a>)</td><td>Portage</td></tr>
  <tr><td rowspan=1>sys-apps</td><td>dbus</td><td>add AppArmor support, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>sys-kernel</td><td>genkernel-next</td><td>bugfixes, submitted upstream (Sabayon/genkernel-next#46 and Sabayon/genkernel-next#49)</td><td>Portage</td></tr>
  <tr><td rowspan=1>www-client</td><td>vimb</td><td>version bump</td><td><a href="https://github.com/tharvik/overlay">tharvik/overlay</a></td></tr>
  <tr><td rowspan=1>x11-wm</td><td>unagi</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
</table>


Patches status
--------------

In _patches/_ are the patches currently applied to my packages.

<table>
  <tr><th>Category</th><th>Package</th><th>Patch</th><th>Comment</th><th>Origin</th></tr>
  <tr><td rowspan=1>net-libs</td><td>nodejs</td><td><tt>nodejs-11.8.0-openssl-1.1.0-no-deprecated.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/604978">#604978</a>)</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=2>net-misc</td><td rowspan=2>openssh</td><td><tt>openssh-7.9p1-openssl-1.1.0-no-deprecated.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0 <tt>no-deprecated</tt></td><td>laomaiweng-overlay</td></tr>
  <tr><td><tt>openssh-7.9p1-openssl-1.1.0-pthreads-collision.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0 which unconditionally includes <tt>pthreads</tt></td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=1>net-vpn</td><td>tor</td><td><tt>tor-0.4.0.1-alpha-missing-openssl-rsa-include.patch</tt></td><td>missing compatibility header for >=dev-libs/openssl-1.1.0</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=3>sys-kernel</td><td>gentoo-sources</td><td><tt>gentoo-sources-4.17.6-openssl-1.1.0-no-deprecated.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0 <tt>no-deprecated</tt></td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=2>grsecurity-sources</td><td><tt>grsecurity-sources-4.9.56-openssl-1.1.0-no-deprecated.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0</td><td>laomaiweng-overlay</td></tr>
  <tr><td><tt>random_timestamp.diff</tt></td><td>randomize TCP timestamp</td><td><a href="https://grsecurity.net/~spender/random_timestamp.diff">grsecurity.net</a></td></tr>
  <tr><td rowspan=2>www-client</td><td>elinks</td><td><tt>elinks-0.13_pre_pre20180225-openssl-1.1.0-compat.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/605026">#605026</a>)</td><td>laomaiweng-overlay</td></tr>
  <tr><td>lynx</td><td><tt>lynx-2.8.9_p1-openssl-1.1.0-compat.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/647832">#647832</a>)</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=1>x11-drivers</td><td>nvidia-drivers</td><td><tt>nvidia-drivers-390.67-hardened-usercopy.patch</tt></td><td>bugfix with kernel 4.18 and hardened usercopy</td><td>Gentoo bug <a href="https://bugs.gentoo.org/658748">#658748</a></td></tr>
  <tr><td rowspan=1>x11-misc</td><td>synergy</td><td><tt>synergy-2.0.0-openssl-1.1.0-compat.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/649714">#649714</a>)</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=1>x11-wm</td><td>xpra</td><td><tt>xpra-2.2.6-ffmpeg-4.0-compatibility.patch</tt></td><td>compatibility with >=media-video/ffmpeg-4.0</td><td>laomaiweng-overlay</td></tr>
</table>
