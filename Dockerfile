# A plain Dockerfile with nothing FrontierJS in it: busybox httpd serving a
# static folder, so a git-wired App on a dev Basecamp has something to build
# and a /health that answers.
FROM busybox:1.36
COPY www /www
EXPOSE 3000
CMD ["httpd", "-f", "-p", "3000", "-h", "/www"]
