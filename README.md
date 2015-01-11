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
  <tr><td rowspan=2>dev-util</td><td>visual-regexp</td><td>proxy-maintained</td><td>Portage</td></tr>
  <tr><td>gource</td><td>version bump, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>media-fonts</td><td>octicons</td><td>due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=1>media-video</td><td>makemkv</td><td>version bump, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>net-analyzer</td><td>openvas-cli</td><td><a href="http://0f5f.blogs.minster.io/2014/12/emerge-blocker-net-analyzer-openvas-7-0-6/">bugfix</a>, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>sci-libs</td><td>qcustomplot</td><td>due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
</table>

