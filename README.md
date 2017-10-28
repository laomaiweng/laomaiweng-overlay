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
  <tr><td rowspan=1>app-crypt</td><td>efitools</td><td>bugfix, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>app-forensics</td><td>afl</td><td>version bump + bugfix, submitted to Portage tree (bug <a href="https://bugs.gentoo.org/show_bug.cgi?id=595106">#595106</a>)</td><td>Portage</td></tr>
  <tr><td rowspan=3>app-misc</td><td>cheat</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td>rig</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td>tmux-mem-cpu-load</td><td>version bump, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>dev-lang</td><td>tcl</td><td>bugfix, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=4>dev-libs</td><td>boost</td><td>enable building of boost_numpy, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td>libsigsegv</td><td>bugfix, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td>libxslt</td><td>bugfix, submitted to Portage tree (bug <a href="https://bugs.gentoo.org/show_bug.cgi?id=632214">#632214</a>)<td>Portage</td></tr>
  <tr><td>weston</td><td>bugfix, submitted to Portage tree (bug <a href="https://bugs.gentoo.org/show_bug.cgi?id=634572">#634572</a>)<td>Portage</td></tr>
  <tr><td rowspan=1>dev-lua</td><td>ldoc</td><td>backport PR #266, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=4>dev-python</td><td>capstone-python</td><td>bump Python targets to 3.5</td><td>Pentoo</td></tr>
  <tr><td>mypy</td><td>version bump, bump Python targets to 3.6</td><td>Portage</td></tr>
  <tr><td>pudb</td><td>version bump</td><td>Portage</td></tr>
  <tr><td>typed_ast</td><td>new package, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=1>dev-tcltk</td><td>nagelfar</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=2>dev-util</td><td>rr</td><td>bugfix, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td>visual-regexp</td><td>proxy-maintained</td><td>Portage</td></tr>
  <tr><td rowspan=1>media-fonts</td><td>octicons</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=1>media-libs</td><td>libid3tag</td><td>bugfix for <a href="https://bugs.gentoo.org/show_bug.cgi?id=605158">#605158</a></td><td>Portage</td></tr>
  <tr><td rowspan=1>net-libs</td><td>serf</td><td>QA fix, reported upstream as <a href="https://issues.apache.org/jira/browse/SERF-188">#SERF-188</a></td><td>Portage</td></tr>
  <tr><td rowspan=1>sys-apps</td><td>ripgrep</td><td>add USE flags for optional features, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>sys-kernel</td><td>genkernel-next</td><td>bugfixes, submitted upstream (Sabayon/genkernel-next#46 and Sabayon/genkernel-next#49)</td><td>Portage</td></tr>
  <tr><td rowspan=1>www-client</td><td>elinks</td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/show_bug.cgi?id=605026">#605026</a>)</td><td>Portage</td></tr>
  <tr><td rowspan=1>x11-wm</td><td>unagi</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
</table>

