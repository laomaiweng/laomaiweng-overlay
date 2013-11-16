laomaiweng-overlay
==================

Gentoo overlay for ebuilds I maintain / work on.

Usage
-----

* Clone the overlay: `git clone https://github.com/laomaiweng/laomaiweng-overlay`
* Add it to Portage: `PORTDIR_OVERLAY="$PORTDIR_OVERLAY /path/to/laomaiweng-overlay"` in /etc/{portage/,}make.conf
* Emerge stuff

Package status
--------------

<table>
  <tr>
    <th>Category</th><th>Package</th><th>Comment</th><th>Upstream</th>
  </tr>
  <tr>
    <td>app-misc</td><td>tmux-mem-cpu-load</td><td>version bump</td><td>Portage</td>
  </tr>
  <tr>
    <td rowspan=2>dev-tcltk</td><td>nagelfar</td><td>due for submission to Portage tree</td><td>laomaiweng-overlay</td>
  </tr>
  <tr>
    <td>tclreadline</td><td>forked from Portage tree to fix runtime crashes</td><td>Portage</td>
  </tr>
  <tr>
    <td>dev-util</td><td>visual-regexp</td><td>proxy-maintained</td><td>Portage</td>
  </tr>
</table>
