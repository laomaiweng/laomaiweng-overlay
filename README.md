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
  <tr><td rowspan=2>app-crypt</td><td>efitools</td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/648016">#648016</a>)</td><td>laomaiweng-overlay</td></tr>
  <tr><td>sbsigntool</td><td>version bump + compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/647914">#647914</a>)</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=1>app-doc</td><td>make-doc</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=1>app-forensics</td><td>afl</td><td>bugfix, submitted to Portage tree (bug <a href="https://bugs.gentoo.org/595106">#595106</a>)</td><td>Portage</td></tr>
  <tr><td rowspan=3>app-misc</td><td>cheat</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td>rig</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td>tmux-mem-cpu-load</td><td>version bump, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>app-portage</td><td>cargo-ebuild</td><td>compatibility with >=dev-libs/openssl-1.1.0 <tt>no-deprecated</tt></td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=1>dev-lang</td><td>tcl</td><td>bugfix, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=7>dev-libs</td><td>boost</td><td>enable building of boost_numpy, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td>cyrus-sasl</td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/592528">#592528</a>)</td><td>Portage</td></tr>
  <tr><td>libclc</td><td>dependency version bump to sys-devel/clang:6</td><td>laomaiweng-overlay</td></tr>
  <tr><td>libsigsegv</td><td>bugfix, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td>libxslt</td><td>bugfix, submitted to Portage tree (bug <a href="https://bugs.gentoo.org/632214">#632214</a>)<td>Portage</td></tr>
  <tr><td>pkcs11-helper</td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/646378">#646378</a>)</td><td>Portage</td></tr>
  <tr><td>weston</td><td>bugfix, submitted to Portage tree (bug <a href="https://bugs.gentoo.org/634572">#634572</a>)<td>Portage</td></tr>
  <tr><td rowspan=1>dev-lua</td><td>ldoc</td><td>backport PR #266, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>dev-perl</td><td>Net-SSLeay</td><td>compatibility with >=dev-libs/openssl-1.1.0, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=3>dev-python</td><td>capstone-python</td><td>bump Python targets to 3.6</td><td>Pentoo</td></tr>
  <tr><td>mypy</td><td>version bump, bump Python targets to 3.6</td><td>Portage</td></tr>
  <tr><td>pudb</td><td>version bump</td><td>Portage</td></tr>
  <tr><td rowspan=1>dev-tcltk</td><td>nagelfar</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=3>dev-util</td><td>bear</td><td>new package, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td>rr</td><td>fix build on amd64 <tt>no-multilib</tt>, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td>visual-regexp</td><td>proxy-maintained</td><td>Portage</td></tr>
  <tr><td rowspan=1>media-fonts</td><td>octicons</td><td>new ebuild, due for submission to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=1>media-libs</td><td>libid3tag</td><td>bugfix for <a href="https://bugs.gentoo.org/605158">#605158</a></td><td>Portage</td></tr>
  <tr><td rowspan=1>net-dns</td><td>unbound</td><td>bugfix with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/646276">#646276</a>)</td><td>Portage</td></tr>
  <tr><td rowspan=2>net-libs</td><td>libesmtp</td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/624412">#624412</a>)</td><td>Portage</td></tr>
  <tr><td>serf</td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/592508">#592508</a>, reported upstream as <a href="https://issues.apache.org/jira/browse/SERF-188">#SERF-188</a>)</td><td>Portage</td></tr>
  <tr><td rowspan=2>net-wireless</td><td>crda</td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/652428">#652428</a>)</td><td>Portage</td></tr>
  <tr><td>wpa_supplicant</td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/649004">#649004</a>)</td><td>Portage</td></tr>
  <tr><td rowspan=1>sys-apps</td><td>ripgrep</td><td>add USE flags for optional features, due for submission to Portage tree</td><td>Portage</td></tr>
  <tr><td rowspan=1>sys-auth</td><td>yubico-piv-tool</td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/648796">#648796</a>)</td><td>Portage</td></tr>
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
  <tr><td rowspan=2>app-crypt</td><td rowspan=2>mit-krb5</td><td><tt>mit-krb5-1.15.2-openssl-1.1-p1.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0</td><td>Gentoo bug <a href="https://bugs.gentoo.org/592454">#592454</a></td></tr>
  <tr><td><tt>mit-krb5-1.15.2-openssl-1.1-p2.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0</td><td>Gentoo bug <a href="https://bugs.gentoo.org/592454">#592454</a></td></tr>
  <tr><td rowspan=2>dev-db</td><td rowspan=2>mysql-connector-c</td><td><tt>mysqsl-connector-c-6.1.9-0001-Don-t-use-deprecated-API-with-openssl-1.1.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0</td><td>Gentoo bug <a href="https://bugs.gentoo.org/606600">#606600</a></td></tr>
  <tr><td><tt>mysqsl-connector-c-6.1.11-openssl-1.1.0-compatibility.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=7>dev-lang</td><td rowspan=2>python:2.7</td><td><tt>python-2.7.14-p1-emulate-TLS-methods.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0</td><td>Gentoo bug <a href="https://bugs.gentoo.org/592480">#592480</a></td></tr>
  <tr><td><tt>python-2.7.14-p2-openssl-1.1.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0</td><td>Gentoo bug <a href="https://bugs.gentoo.org/592480">#592480</a></td></tr>
  <tr><td rowspan=2>python:3.5</td><td><tt>python-3.5.4-p1-emulate-TLS-methods.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0</td><td>Gentoo bug <a href="https://bugs.gentoo.org/592480">#592480</a></td></tr>
  <tr><td><tt>python-3.5.4-p2-openssl-1.1.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0</td><td>Gentoo bug <a href="https://bugs.gentoo.org/592480">#592480</a></td></tr>
  <tr><td rowspan=2>python:3.6</td><td><tt>python-3.6.3-p1-emulate-TLS-methods.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0</td><td>Gentoo bug <a href="https://bugs.gentoo.org/592480">#592480</a></td></tr>
  <tr><td><tt>python-3.6.3-p2-openssl-1.1.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0</td><td>Gentoo bug <a href="https://bugs.gentoo.org/592480">#592480</a></td></tr>
  <tr><td>ruby:2.4</td><td><tt>ruby-2.4.3-openssl11-compatibility.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/646950">#646950</a>)</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=2>dev-libs</td><td>apr-util</td><td><tt>apr-util-1.6.1-openssl-1.1.0-compat.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/647976">#647976</a>)</td><td>laomaiweng-overlay</td></tr>
  <tr><td>beecrypt</td><td><tt>beecrypt-4.2.1-icu-61-compatibility.patch</tt></td><td>compatibility with >=dev-libs/icu-61.1, due for submission upstream/to Portage tree</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=2>dev-python</td><td>cryptography</td><td><tt>cryptography-2.1.1-openssl-1.1.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0</td><td>Gentoo bug <a href="https://bugs.gentoo.org/614770">#614770</a></td></tr>
  <tr><td>m2crypto</td><td><tt>m2crypto-0.27.0-r1-openssl-1.1.0-no-deprecated.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0 (adapted from bug <a href="https://bugs.gentoo.org/604842">#604842</a>)</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=1>dev-vcs</td><td>git</td><td><tt>git-2.16.1-openssl-1.1.0-compat.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0 (improved version of bug <a href="https://bugs.gentoo.org/592466">#592466</a>'s patch)</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=2>mail-client</td><td rowspan=2>mutt</td><td><tt>mutt-1.9.2-openssl-1.1.0-compat.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/606012">#606012</a>)</td><td>laomaiweng-overlay</td></tr>
  <tr><td><tt>#651552-0007-ncurses-matching-tinfo.patch</tt></td><td>fix link issue against =sys-libs/ncurses-6.1</td><td>Gentoo bug <a href="https://bugs.gentoo.org/651552">#651552</a></td></tr>
  <tr><td rowspan=5>net-libs</td><td rowspan=2>libssh</td><td><tt>libssh-0.7.5-openssl-1.1.0-support.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0</td><td>upstream <tt>master</tt></td></tr>
  <tr><td><tt>libssh-0.7.5-openssl-1.1.0-no-deprecated.patch</tt></td><td>compatibility with >=dev-lib/openssl-1.1.0</td><td>laomaiweng-overlay</td></tr>
  <tr><td>libssh2</td><td><tt>libssh2-1.8.0-openssl-1.1.0-no-deprecated.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0 <tt>no-deprecated</tt></td><td>laomaiweng-overlay</td></tr>
  <tr><td>neon</td><td><tt>neon-0.30.2-openssl-1.1-compat.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/647680">#647680</a>)</td><td>laomaiweng-overlay</td></tr>
  <tr><td>nodejs</td><td><tt>nodejs-10.0.0-openssl-1.1.0-no-deprecated.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/604978">#604978</a>)</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=3>net-misc</td><td rowspan=3>openssh</td><td><tt>github-PR-#48.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0</td><td>openssh/openssh-portable#48</td></tr>
  <tr><td><tt>openssh-7.6p1-openssl-1.1.0-compatibility.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/592578">#592578</a>)</td><td>laomaiweng-overlay</td></tr>
  <tr><td><tt>openssh-7.6p1-openssl-1.1.0-pthreads-collision.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/592578">#592578</a>)</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=2>net-vpn</td><td rowspan=2>tor</td><td><tt>tor-openssl-1.1.0.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0</td><td>Gentoo bug <a href="https://bugs.gentoo.org/630380">#630380</a></td></tr>
  <tr><td><tt>tor-0.3.3.1_alpha-openssl-1.1.0-configure-detect.patch</tt></td><td>configure script compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/630380">#630380</a>)</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=2>sys-kernel</td><td rowspan=2>grsecurity-sources</td><td><tt>grsecurity-sources-4.9.56-openssl-1.1.0-no-deprecated.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0</td><td>laomaiweng-overlay</td></tr>
  <tr><td><tt>random_timestamp.diff</tt></td><td>randomize TCP timestamp</td><td><a href="https://grsecurity.net/~spender/random_timestamp.diff">grsecurity.net</a></td></tr>
  <tr><td rowspan=2>www-client</td><td>elinks</td><td><tt>elinks-0.13_pre_pre20180225-openssl-1.1.0-compat.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/605026">#605026</a>)</td><td>laomaiweng-overlay</td></tr>
  <tr><td>lynx</td><td><tt>lynx-2.8.9_pre16-openssl-1.1-compat.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/647832">#647832</a>)</td><td>laomaiweng-overlay</td></tr>
  <tr><td rowspan=1>x11-misc</td><td>synergy</td><td><tt>synergy-2.0.0-openssl-1.1.0-compat.patch</tt></td><td>compatibility with >=dev-libs/openssl-1.1.0 (bug <a href="https://bugs.gentoo.org/649714">#649714</a>)</td><td>laomaiweng-overlay</td></tr>
</table>
