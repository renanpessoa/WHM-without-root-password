### About

You need to access WHM but the client did not tell you the root password, how do you get in? The WHM <b>API</b> is the answer! It is only necessary to have SSH access to the server.

The WHM API has many options, one of which is to create a temporary token to access.

#### **`Only for cPanel/WHM servers`**

### How to use


Just run the script and access url

bash <(curl -ks https://raw.githubusercontent.com/renanpessoa/WHM-without-root-password/master/whmpass.sh)

Example:
<pre>
root@vps [~]# bash <(curl -ks https://raw.githubusercontent.com/renanpessoa/WHM-without-root-password/master/whmpass.sh)
https://127.0.0.1:2087/cpsess7572305514/login/?session=root%3aP23hh6%3acreate_user_session%2c0e7a36bd661e842dd3250b7a2bcb46
root@vps [~]# 
</pre>

To access as a reseller run the command adding the `-r` parameter and the reseller account username:
<pre>
root@vps [/home/renanpessoa]# bash <(curl -ks https://raw.githubusercontent.com/renanpessoa/WHM-without-root-password/master/whmpass.sh) -r renanpessoa
https://127.0.0.1:2087/cpsess4545466/login/?session=renanpessoa%3aErZ1ePuKTCH%3acreate_user_session%2cf88a0a9ed2c16ceb12a6c0410ee9e539
root@vps [/home/renanpessoa]# 
</pre>

<br>
This command is compatible with all versions of WHM `11.40+`
