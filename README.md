# Sllickdeals Link Decoder
 
## I am a fan of [slickdeals](https://slickdeals.net/)
I could spend sometime to look for the good deals posted in slickdeals looking for some good deals.

However, I also installed ad blocker at my home network.
Because the clicked URL in slickdeals would be forwarded via different URL for whatever reason, my ad blocker would block the URL shared in slickdeals post. 
I could put the hostnames into my ad blocker whitelist, but I rather not to do it.

Here is the [whitelist](https://help.slickdeals.net/hc/en-us/articles/360000551834-Why-Do-Certain-Links-Lead-to-a-Page-not-found-Page-)

## Analysis
Since I like to make my life to be more complicated, I created a shell script to decode the URL shared in the post. 
All the URL have one thing in common, the actual URL of the online store would start with ```=https``` (https, because we are living in secure world) and slickdeals would replace all the special character in the URL to [ASCII Encoding](https://www.w3schools.com/tags/ref_urlencode.ASP).
Since now I know the pattern, it is easy to write simple script with awk to cut the URL and get the actual online store URL. 

## Workaround
See the [script](https://github.com/sanwill/sllickdeals-link-decoder/blob/main/tool/slickdeals_ldcr.sh)

Please note, currently the script only decodes certain ASCII special characters like ```"/", ":", "?", "="```.

Usage:
```
$ slickdeals_ldcr.sh "https://goto.target.com/c/10451/360518/2092?subid1=9855a650390211ed85c38641be08cf160INT&u=https%3A%2F%2Fwww.target.com%2Fp%2Flogitech-k350-wireless-ergonomic-keyboard-black%2F-%2FA-82675608"
Link:
https://www.target.com/p/logitech-k350-wireless-ergonomic-keyboard-black/-/A-82675608
```
Next, I can place the script in your most convenient location, for example: ```/usr/local/bin```
