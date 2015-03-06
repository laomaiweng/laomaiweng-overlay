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
  <tr><th>Category</th><th>Package</th><th>Comment</th><th>Upstream</th></tr>
  <tr><td rowspan=2>app-misc</td><td>cheat</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td>tmux-mem-cpu-load</td><td>version bump, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>dev-games</td><td>mygui</td><td>bugfix, due for submission to Portage tree</td><td>Portage</td></tr>
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
  <tr><td rowspan=2>media-video</td><td>makemkv</td><td>version bump, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td>mplayer2</td><td>bugfix (<a href="https://bugs.gentoo.org/show_bug.cgi?id=519212">#519212</a>), due for inclusion in Portage tree</td><td>Portage</td></tr>
</table>

