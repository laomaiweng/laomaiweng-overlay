laomaiweng-overlay
==================

Gentoo overlay for ebuilds I maintain / work on.

Usage
-----

### With layman

* Add the overlay: `layman -f --overlays http://github.com/laomaiweng/laomaiweng-overlay/raw/master/profiles/layman.xml --add laomaiweng`
* Emerge stuff

### Without layman

* Clone the overlay: `git clone https://github.com/laomaiweng/laomaiweng-overlay`
* Add it to Portage: `PORTDIR_OVERLAY="$PORTDIR_OVERLAY /path/to/laomaiweng-overlay"` in /etc/{portage/,}make.conf
* Emerge stuff


Package status
--------------

<table>
  <tr><th>Category</th><th>Package</th><th>Comment</th><th>Repo</th></tr>
  <tr><td rowspan=1>app-emulation</td><td>virtualbox</td><td>bugfix, submitted to Portage tree (bug <a href="https://bugs.gentoo.org/show_bug.cgi?id=591582">#591582</a>)</td><td>Portage</td></tr>
  <tr><td rowspan=2>app-misc</td><td>cheat</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td>tmux-mem-cpu-load</td><td>version bump, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>dev-games</td><td>mygui</td><td>bugfix, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>dev-java</td><td>jlatexmath-fop</td><td>bugfix, due for submission to science overlay</td><td>science overlay</td></tr>
  <tr><td rowspan=1>dev-tcltk</td><td>nagelfar</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=4>dev-util</td><td>eresi</td><td>bugfix (upstream bug), due for submission to Sunrise overlay</td><td>Sunrise</td></tr>
  <tr><td>rr</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td>vbindiff</td><td>bugfix, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td>visual-regexp</td><td>proxy-maintained</td><td>Portage</td></tr>
  <tr><td rowspan=1>media-fonts</td><td>octicons</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=1>media-gfx</td><td>blender</td><td>enhancement, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>media-libs</td><td>opencolorio</td><td>bugfix (ported from upstream bug imageworks/OpenColorIO#369), due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>www-client</td><td>vimb</td><td>version bump, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>x11-wm</td><td>unagi</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
</table>

