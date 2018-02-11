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
  <tr><td rowspan=1>app-doc</td><td>make-doc</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=1>app-forensics</td><td>afl</td><td>version bump + bugfix, submitted to Portage tree (bug <a href="https://bugs.gentoo.org/595106">#595106</a>)</td><td>Portage</td></tr>
  <tr><td rowspan=3>app-misc</td><td>cheat</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td>rig</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td>tmux-mem-cpu-load</td><td>version bump, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>dev-lang</td><td>tcl</td><td>bugfix, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=6>dev-libs</td><td>boost</td><td>enable building of boost_numpy, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td>cyrus-sasl</td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/592528">#592528</a>)</td><td>Portage</td></tr>
  <tr><td>libsigsegv</td><td>bugfix, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td>libxslt</td><td>bugfix, submitted to Portage tree (bug <a href="https://bugs.gentoo.org/632214">#632214</a>)<td>Portage</td></tr>
  <tr><td>pkcs11-helper</td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/646378">#646378</a>)</td><td>Portage</td></tr>
  <tr><td>weston</td><td>bugfix, submitted to Portage tree (bug <a href="https://bugs.gentoo.org/634572">#634572</a>)<td>Portage</td></tr>
  <tr><td rowspan=1>dev-lua</td><td>ldoc</td><td>backport PR #266, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=4>dev-python</td><td>capstone-python</td><td>bump Python targets to 3.6</td><td>Pentoo</td></tr>
  <tr><td>mypy</td><td>version bump, bump Python targets to 3.6</td><td>Portage</td></tr>
  <tr><td>pudb</td><td>version bump</td><td>Portage</td></tr>
  <tr><td>typed_ast</td><td>new package, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=1>dev-tcltk</td><td>nagelfar</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=3>dev-util</td><td>bear</td><td>new package, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td>rr</td><td>bugfix, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td>visual-regexp</td><td>proxy-maintained</td><td>Portage</td></tr>
  <tr><td rowspan=1>media-fonts</td><td>octicons</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=1>media-libs</td><td>libid3tag</td><td>bugfix for <a href="https://bugs.gentoo.org/605158">#605158</a></td><td>Portage</td></tr>
  <tr><td rowspan=1>net-dns</td><td>unbound</td><td>bugfix with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/646276">#646276</a>)</td><td>Portage</td></tr>
  <tr><td rowspan=2>net-libs</td><td>libesmtp</td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/624412">#624412</a>)</td><td>Portage</td></tr>
  <tr><td>serf</td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/592508">#592508</a>, reported upstream as <a href="https://issues.apache.org/jira/browse/SERF-188">#SERF-188</a>)</td><td>Portage</td></tr>
  <tr><td rowspan=1>sys-apps</td><td>ripgrep</td><td>add USE flags for optional features, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>sys-kernel</td><td>genkernel-next</td><td>bugfixes, submitted upstream (Sabayon/genkernel-next#46 and Sabayon/genkernel-next#49)</td><td>Portage</td></tr>
  <tr><td rowspan=1>www-client</td><td>elinks</td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/605026">#605026</a>)</td><td>Portage</td></tr>
  <tr><td rowspan=1>x11-wm</td><td>unagi</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
</table>


Patches status
--------------

In _patches/_ are the patches currently applied to my packages.

<table>
  <tr><th>Category</th><th>Package</th><th>Patch</th><th>Comment</th><th>Origin</th></tr>
  <tr><td rowspan=1>app-admin</td><td>syslog-ng</td><td><tt>syslog-ng-3.13.2-openssl-1.1-compatibility.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/646952">#646952</a>)</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=1>app-crypt</td><td rowspan=2>mit-krb5</td><td><tt>mit-krb5-1.15.2-openssl-1.1-p1.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0</td><td>Gentoo bug <a href="https://bugs.gentoo.org/592454">#592454</a></td></tr>
  <tr><td><tt>mit-krb5-1.15.2-openssl-1.1-p2.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0</td><td>Gentoo bug <a href="https://bugs.gentoo.org/592454">#592454</a></td></tr>
  <tr><td rowspan=7>dev-lang</td><td rowspan=2>python:2.7</td><td><tt>python-2.7.14-p1-emulate-TLS-methods.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0</td><td>Gentoo bug <a href="https://bugs.gentoo.org/592480">#592480</a></td></tr>
  <tr><td><tt>python-2.7.14-p2-openssl-1.1.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0</td><td>Gentoo bug <a href="https://bugs.gentoo.org/592480">#592480</a></td></tr>
  <tr><td rowspan=2>python:3.5</td><td><tt>python-3.5.4-p1-emulate-TLS-methods.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0</td><td>Gentoo bug <a href="https://bugs.gentoo.org/592480">#592480</a></td></tr>
  <tr><td><tt>python-3.5.4-p2-openssl-1.1.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0</td><td>Gentoo bug <a href="https://bugs.gentoo.org/592480">#592480</a></td></tr>
  <tr><td rowspan=2>python:3.6</td><td><tt>python-3.6.3-p1-emulate-TLS-methods.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0</td><td>Gentoo bug <a href="https://bugs.gentoo.org/592480">#592480</a></td></tr>
  <tr><td><tt>python-3.6.3-p2-openssl-1.1.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0</td><td>Gentoo bug <a href="https://bugs.gentoo.org/592480">#592480</a></td></tr>
  <tr><td>ruby:2.4</td><td><tt>ruby-2.4.3-openssl11-compatibility.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/646950">#646950</a>)</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=3>net-misc</td><td rowspan=3>openssh</td><td><tt>github-PR-#48.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0</td><td>openssh/openssh-portable#48</td></tr>
  <tr><td><tt>openssh-7.6p1-openssl-1.1.0-compatibility.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/592578">#592578</a>)</td><td>laomaiweng-overlay</td></tr>
  <tr><td><tt>openssh-7.6p1-openssl-1.1.0-pthreads-collision.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/592578">#592578</a>)</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=1>sys-kernel</td><td>grsecurity-sources</td><td><tt>random_timestamp.diff</tt></td><td>randomize TCP timestamp</td><td><a href="https://grsecurity.net/~spender/random_timestamp.diff">grsecurity.net</a></td></tr>
  <tr><td rowspan=1>www-client</td><td>chromium</td><td><tt>crc32c-gnu++17fix.patch</tt></td><td>`gnu++17` build failure</td><td>Gentoo bug <a href="https://bugs.gentoo.org/631452">#631452</a></td></tr>
</table>
