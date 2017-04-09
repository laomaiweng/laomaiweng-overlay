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
  <tr><td rowspan=2>app-crypt</td><td>efitools</td><td>bugfix, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td>libmd</td><td>bugfix, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>app-forensics</td><td>afl</td><td>bugfix, submitted to Portage tree (bug <a href="https://bugs.gentoo.org/show_bug.cgi?id=595106">#595106</a>)</td><td>Portage</td></tr>
  <tr><td rowspan=3>app-misc</td><td>cheat</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td>rig</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td>tmux-mem-cpu-load</td><td>version bump, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>dev-lang</td><td>tcl</td><td>bugfix, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>dev-libs</td><td>wlc</td><td>version bump, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>dev-lua</td><td>ldoc</td><td>backport PR #266, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>dev-python</td><td>capstone-python</td><td>bump Python targets to 3.5</td><td>Pentoo</td></tr>
  <tr><td rowspan=1>dev-tcltk</td><td>nagelfar</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=3>dev-util</td><td>eresi</td><td>bugfix (upstream bug), due for submission to Sunrise overlay</td><td>Sunrise</td></tr>
  <tr><td>rr</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td>visual-regexp</td><td>proxy-maintained</td><td>Portage</td></tr>
  <tr><td rowspan=1>media-fonts</td><td>octicons</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=1>media-gfx</td><td>nomacs</td><td>version bump, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>media-libs</td><td>libid3tag</td><td>bugfix, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=2>x11-wm</td><td>awesome</td><td>version bump, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td>unagi</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
</table>

