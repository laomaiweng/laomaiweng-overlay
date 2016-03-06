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
  <tr><td rowspan=1>app-emulation</td><td>vmware-player</td><td>bugfix, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=3>app-misc</td><td>cheat</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td>tmux-mem-cpu-load</td><td>version bump, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>dev-games</td><td>mygui</td><td>bugfix, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>dev-java</td><td>jlatexmath-fop</td><td>bugfix, due for submission to science overlay</td><td>science overlay</td></tr>
  <tr><td rowspan=1>dev-vcs</td><td>hub</td><td>version bump (complete rewrite), due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=2>dev-tcltk</td><td>nagelfar</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td>tcllib</td><td>version bump, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=3>dev-util</td><td>eresi</td><td>bugfix (upstream bug), due for submission to Sunrise overlay</td><td>Sunrise</td></tr>
  <tr><td>vbindiff</td><td>bugfix, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td>visual-regexp</td><td>proxy-maintained</td><td>Portage</td></tr>
  <tr><td rowspan=1>media-fonts</td><td>octicons</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=1>media-gfx</td><td>blender</td><td>enhancement, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=2>media-libs</td><td>opencolorio</td><td>bugfix (ported from upstream bug imageworks/OpenColorIO#369), due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td>opencv</td><td>bugfixes (Itseez/opencv#3763 + Itseez/opencv#3792 / <a href="https://bugs.gentoo.org/show_bug.cgi?id=531198">#531198</a>) + enhancement (gcc limitations), due for submission to Portage tree (<a href="https://bugs.gentoo.org/show_bug.cgi?id=531198">#531198</a> already in Portage)</td><td>Portage</td></tr>
  <tr><td rowspan=2>media-sound</td><td>moc</td><td>bugfix for <a href="https://bugs.gentoo.org/show_bug.cgi?id=521860">#521860</a>, submitted <a href="http://moc.daper.net/node/1469">upstream</a> and to Portage tree</td><td>Portage</td></tr>
  <tr><td>pasystray</td><td>version bump, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>www-client</td><td>vimb</td><td>version bump, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>x11-plugins</td><td>vicious</td><td>version bump, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>x11-wm</td><td>unagi</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
</table>

