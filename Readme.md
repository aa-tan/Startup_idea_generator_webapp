# Startup Idea Generator
Simple example app using Crystal-lang and Kemal as a web framework

## Building
First clone the repo.

```console
$ git clone https://github.com/aa-tan/Startup_idea_generator_webapp.git
```

Then depending on if you're running as development or building for production.

```console
For testing
$ crystal run src/server.cr

To build and run (omit the --release if building for development)
$ crystal build --release server.cr

If ready to run for production, change the environment variable
$ export KEMAL_ENV=production

Otherwise, run with
$ ./server
```
