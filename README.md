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
  <tr><td rowspan=1>app-forensics</td><td>afl</td><td>version bump, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=2>app-misc</td><td>cheat</td><td>due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td>tmux-mem-cpu-load</td><td>version bump, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>dev-games</td><td>mygui</td><td>bugfix, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=2>dev-tcltk</td><td>nagelfar</td><td>due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td>tcllib</td><td>version bump, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=4>dev-util</td><td>cscope</td><td>bugfix (<a href="https://bugs.gentoo.org/show_bug.cgi?id=498810">#537136</a>), due for inclusion in Portage tree</td><td>Portage</td></tr>
  <tr><td>eresi</td><td>bugfix (upstream bug), due for submission to Sunrise overlay</td><td>Sunrise</td></tr>
  <tr><td>vbindiff</td><td>bugfix, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td>visual-regexp</td><td>proxy-maintained</td><td>Portage</td></tr>
  <tr><td rowspan=1>media-fonts</td><td>octicons</td><td>due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=2>media-gfx</td><td>blender</td><td>enhancement, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td>splashutils</td><td>bugfixes (<a href="https://bugs.gentoo.org/show_bug.cgi?id=506124">#506124</a> + new TAILQ bug), due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=2>media-libs</td><td>opencolorio</td><td>bugfix (ported from upstream bug imageworks/OpenColorIO#369), due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td>opencv</td><td>bugfix (submitted upstream as Itseez/opencv#3763), due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=2>media-video</td><td>makemkv</td><td>version bump, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td>mplayer2</td><td>bugfix (<a href="https://bugs.gentoo.org/show_bug.cgi?id=519212">#519212</a>), due for inclusion in Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>sci-libs</td><td>qcustomplot</td><td>due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
</table>

