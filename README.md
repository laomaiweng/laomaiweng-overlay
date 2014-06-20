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
    <td rowspan=1>dev-tcltk</td><td>nagelfar</td><td>due for submission to Portage tree</td><td>laomaiweng-overlay</td>
  </tr>
  <tr>
    <td rowspan=2>dev-util</td><td>visual-regexp</td><td>proxy-maintained</td><td>Portage</td>
  </tr>
  <tr>
    <td>gource</td><td>version bump, due for submission to Portage tree</td><td>Portage</td>
  </tr>
  <tr>
    <td rowspan=1>dev-vcs</td><td>git</td><td>bugfix, filed as [#514010](https://bugs.gentoo.org/show_bug.cgi?id=514010)</td><td>Portage</td>
  </tr>
  <tr>
    <td rowspan=1>media-fonts</td><td>octicons</td><td>due for submission to Portage tree</td><td>laomaiweng-overlay</td>
  </tr>
  <tr>
    <td rowspan=1>sci-libs</td><td>qcustomplot</td><td>due for submission to Portage tree</td><td>laomaiweng-overlay</td>
  </tr>
</table>
