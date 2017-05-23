Chris Buell

Release 0:

Common http status codes:
	Status codes are divided up by hundreds. The most well known status code is 404 (file not found). Even 
non-programmers know that one! Status codes in the 400s are Client error. Other fairly common ones are 403 (forbidden),
and 400 (bad request). Forbidden means it was a valid address, but you aren't allowed to view it. Bad request means the 
server couldn't understand the request. These are all ones that regular users are accustomed to seeing, because you only 
these if something goes wrong!

The 200s are success status codes. 200 is OK, meaning it was successful. 

The 300's are redirect status codes. I saw  302 fly by a lot when I watched the cnn.com site with the network tool. 302 is a found, meaning 
the identifier has been temporarily changed. Also 304 (not modifid) which means that it hasn't been modified so the client can use the previously 
cached version.

The 500s are server status codes. 503 (service unavailable) is fairly common to see, it can be triggered by the server being down. 
Also the 504 (gateway timeout) which means server didn't get a response in the alloted time.

I left the 100s for last. they are information status code, for example 100 which lets the client know that the first part of the
request was recieved and to send the rest.


Get vs Post requests:
	Get requests are requesting data from the server, web pages etc. Post requests are
requesting to send data to the server, such as information from web forms.


Cookies:
	There was a lot of upset about them years ago, in a large part due to tracking, but they also are useful for remembering your settings
at a website, or remembering things like login and password info. A cookie is a small piece of code that the server gives the web browser. 
There is a lot of variation in what cookies do, some are permanently in your browser (until you clean out the cache, unless they're zombie cookies which remake themselves.) and can track you. Others only last as long as your session at the time.
	

