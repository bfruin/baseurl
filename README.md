baseurl
=======

Simple Perl script to get the base URL of a URL (i.e., a redirect or tiny).

To get the base URL simply execute:

```
   ./baseurl.pl
```

Which will give you a prompt beginning with HTTP protocol:

```    
    Enter URL: http://
```
Enter the desired URL and the script will return the base URL:

```    
    Base URL: {output}
```
For example:

```
    ./baseurl.pl
    Enter URL: http://tiny.cc/bfruin
    Base URL: https://github.com/bfruin
```
