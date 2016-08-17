# Web Redirection Container

This is just a dead simple nginx container that will redirect
everything to whatever is in the `DESTINATION` environment variable.

It can be tested locally with something like:

```bash
export DESTINATION='https://google.com'
docker-compose up
```

and then opening a browser to `http://<dockerip>:8080/blah/blah` and you should go to
`https://google.com`.

There is now an option to enable deep redirection, so if you set
`DEEP_REDIRECT` environment variable, with the same destination, going
to `http://<dockerip>:8080/blah/blah` will redirect to
`https://google.com/blah/blah`


