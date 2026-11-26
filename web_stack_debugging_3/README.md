# Web stack debugging #3

Using strace, I found that Apache returned a 500 error because wp-settings.php tried to load a file ending in .phpp instead of .php.

- 0-strace_is_your_friend.pp: Puppet manifest that fixes the typo.
