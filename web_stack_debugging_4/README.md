# Web stack debugging #4

- 0-the_sky_is_the_limit_not.pp: raises the Nginx open files limit (ULIMIT in /etc/default/nginx) from 15 to 4096 so no requests fail under load.
- 1-user_limit.pp: raises the holberton user's open files limits in /etc/security/limits.conf so it can log in and open files.
